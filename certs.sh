#!/bin/bash

# The ca-certs.sh script must be run first
#
# bash script to create server-side and client-side certs

# run as:
#   sudo bash certs.sh

# Global names
#
# defines values for private data that should not be shared
source private-data.sh
#
# Directories and paths
#
HOMEDIR="/home/pi"
CERTSDIR="/etc/ssl"
ESC_CERTSDIR="\/etc\/ssl"
#
#   Key and pem paths and files used in openssl.cnf
#
PRIVATEPATH="$CERTSDIR/private/"
CACERTKEY="cakey.pem"
CAKEYFILE="$PRIVATEPATH$CACERTKEY"
#
CERTPATH="$CERTSDIR/certs/"
CACERTPEM="cacert.pem"
CACERTFILE="$CERTPATH$CACERTPEM"
#
CONFFILE="$CERTSDIR/openssl.cnf"
CONFFILE2="$CERTSDIR/openssl2.cnf"

#CERTNAME="$HOSTNAME"
certname="garage-door"
SERVERCERTFILE="$CERTPATH$CERTNAME-server.pem"
SERVERKEYFILE="$PRIVATEPATH$CERTNAME-server-key.pem"
SERVERREQUESTFILE="$PRIVATEPATH$CERTNAME-server.req"

CLIENTCERTFILE="$CERTPATH$CERTNAME-client.pem"
CLIENTKEYFILE="$PRIVATEPATH$CERTNAME-client-key.pem"
CLIENTREQUESTFILE="$PRIVATEPATH$CERTNAME-client.req"
CLIENTP12="$PRIVATEPATH$CERTNAME-client.p12"
#
#   The Common Name for the CA cannot be the same as the server or client (i.e., CA != FQDN)
#
FQDN="$HOSTNAME"
#
#   Most browsers limit certs to 365 days or less
#
DAYS="365"
#!/bin/bash

# bash script to create server and client-side certs

# Global names
#   Most systems have many certs. So, name your cert appropriately. For example, my ♣hostname♣
#   for a Raspberry Pi garage door opener is rpigarageopener, and a descriptive name for the
#   cert might be garage-opener.  I chose to use garage-opener where ♣certname♣ appears below.
#
#   Most cerst are now limited to 365 days or less
DAYS="365"
#
# End Global Names

echo "Starting Server and Client-side Certificate Setup script"
echo

# The script must run as sudo
#
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash certs.sh"
    echo
    echo "Failure: Server and Client Certificate Setup script"
    exit 1
fi

# must edit private data before runnning the script
if [[ "$CERTPASSWORD" == *"<"* ]]; then
    echo
    echo "Please edit the global names in private-data.sh before running"
    echo "    Location = $CITY, $STATE, $COUNTRY"
    echo "    Name = $LASTNAME, $FIRSTNAME"
    echo "    email = $EMAIL"
    echo "    cert password = $CERTPASSWORD"
    echo "    FQDN = $FQDN"
    echo "    Cert Name = $CERTNAME"
    echo
    echo " Feilure: Exiting Certificate Authority setup script"
fi

# the script can be run multiple times, but should be for a different cert name
if [ -f "$SERVERCERTFILE" ]; then
    echo "Cert file, $SERVERCERTFILE, exists."
    if [ -f "$SERVERKEYFILE" ]; then
        echo "Key file, $SERVERKEYFILE, exists."
        echo
        echo "$CERTNAME files were created on a previous run."
        read -p "Do you want to overwrite [y/n]? " -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo
            echo "Overwriting cert and key files for $CERTNAME"
        elif [[ $REPLY =~ ^[Nn]$ ]]; then
            echo
            read -p 'Enter Certname: ' CERTNAME
            if [[ "$CERTNAME" == "" ]]; then
                echo "Failure: No certname entered. Do not press enter when answering y/n question"
            else
                echo "Changing CERTNAME in private-data.sh"
                SERVERCERTFILE="$CERTPATH$CERTNAME-server.pem"
                SERVERKEYFILE="$PRIVATEPATH$CERTNAME-server-key.pem"
                SERVERREQUESTFILE="$PRIVATEPATH$CERTNAME-server.req"
                CLIENTCERTFILE="$CERTPATH$CERTNAME-client.pem"
                CLIENTKEYFILE="$PRIVATEPATH$CERTNAME-client-key.pem"
                CLIENTREQUESTFILE="$PRIVATEPATH$CERTNAME-client.req"
                CLIENTP12="$PRIVATEPATH$CERTNAME-client.p12"
                sed -i "s/CERTNAME=.*/CERTNAME= $CERTNAME/" private-data.sh
            fi
            echo "CERTNAME = $CERTNAME"
            exit 1
        else
            echo
            echo "Exiting. Must answer [y/n]"
        fi
    else
        echo "No $SERVERKEYFILE file found."
    fi
else
    echo "No $SERVERCERTFILE file found."
fi


# Change to home directory and create certs directory
cd $HOMEDIR
echo "home directory:"
pwd

echo
echo "Create and move into certs directory:"
[ -d $CERTSDIR ] && echo "$CERTSDIR directory exists" || mkdir CERTSDIR
cd $CERTSDIR
pwd

# Remove old files
echo
echo "Remove old files"
rm $SERVERCERTFILE
rm $SERVERKEYFILE
rm $SERVERREQUESTFILE
rm $CLIENTCERTFILE
rm $CLIENTKEYFILE
rm $CLIENTREQUESTFILE

echo
echo "Edit openssl.cnf"
cp $CONFFILE $CONFFILE2

# Must change commonName and basicConstraints
sed -i "s/commonName_default = cacert/commonName_default = $CERTNAME/" $CONFFILE2
sed -i "s/basicConstraints=CA:TRUE, pathlen=0/basicConstraints=CA:FALSE/" $CONFFILE2

# need to change commonName and basicConstraints

# Generate server side request, key and cert
echo
echo "Generate server-side"
echo "  Generate server-side key"
echo
openssl genrsa -out $SERVERKEYFILE 4096

# Generate certificate request
echo
echo "  Generate server-side request"
echo
openssl req -new -config $CONFFILE2 -key $SERVERKEYFILE -out $SERVERREQUESTFILE

# Use the certificate request and CA cert to generate the server cert
echo
echo "  Use request and CA to generate the server cert"
echo

openssl x509 -req -in $SERVERREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -set_serial 100 -days $DAYS -outform PEM -out $SERVERCERTFILE

echo
echo "Server-side files created:"

# Generate client-side request, key and cert
echo
echo "Generate client-side"
echo "  Generate client-side key"
sudo openssl genrsa -out $CLIENTKEYFILE 4096

echo
echo "  Generate client-side request using the client private key"
echo
sudo openssl req -new -config $CONFFILE2 -key $CLIENTKEYFILE -out $CLIENTREQUESTFILE


echo
echo "  Generate client-side cert using request and CA"
echo
openssl x509 -req -in $CLIENTREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -set_serial 101  -days $DAYS -outform PEM -out $CLIENTCERTFILE

echo
echo "  Convert the client certificate and private key to pkcs#12 format for use by a client browsers"
echo
openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTP12

echo
echo "Client-side files created:"

# When prompted, enter an  <export-CERTPASSWORD>
# chmod +r $CERTNAME-client.p12

# Clean up – remove the client private key, client cert and client request files as the pkcs12 has everything needed.
# rm $CLIENTKEYFILE $CLIENTCERTFILE $CERTNAME-client.req

echo
echo "Verify if certs are valid"
echo
openssl verify -CAfile $CACERTFILE $SERVERCERTFILE $CLIENTCERTFILE


