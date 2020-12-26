#!/bin/bash

# bash script to create Certifcate Authority

# run as:
#   sudo bash ca-certs.sh

# Global names
#
#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values below in angle brackets with your values
#
COUNTRY="<your-2-letter-country-code>"
STATE="<your-state-or-province>"
CITY="<your-city>"
LASTNAME="<your-company-or-lastname>"
FIRSTNAME="<your-business-unit-or-first-name>"
EMAIL="<your-throwaway-gmail-account>@gmail.com"
CERTPASSWORD="<your-gmail-password>"
#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****
#
# Directories and paths
#
HOMEDIR="/home/pi"
CACERTSDIR="$HOMEDIR/ca-certs"
CERTSDIR="/etc/ssl"
#
#   Key and pem paths and files used in openssl.cnf
#
PRIVATEPATH="$CERTSDIR/private/"
CERTKEY="cakey.pem"
KEYFILE="$PRIVATEPATH$CERTKEY"
#
CERTPATH="$CERTSDIR/certs/"
CERTPEM="cacert.pem"
CERTFILE="$CERTPATH$CERTPEM"
#
CONFFILE="$CERTSDIR/openssl.cnf"
#
#   The Common Name for the CA cannot be the same as the server or client (i.e., CA != FQDN)
#
FQDN="$HOSTNAME"
CA="$HOSTNAME-ca"
#
#   Most browsers limit certs to 365 days or less
#
DAYS="365"
#
# End Global names


echo "Starting Certificate Authority script"
echo


# The script must run as sudo. If not sudo, then exit
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash ca-certs.sh"
    echo
    echo "Failure: Exiting Certificate Authority setup script"
    exit 1
fi

# The script only needs to be run one time on a server
#
# If the ca-cert key and pem files exist then prompt user if they really want
# to continue. If they don't, then exit
#
if [ -f "$CERTFILE" ]; then
    echo "CA cert file ($CERTFILE) exists."
    if [ -f "$KEYFILE" ]; then
        echo "CA key file ($KEYFILE) exists."
        echo
        read -p "The CA files were created. Do you want to continue? " -n 1 -r
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo
            echo "Failure: Exiting Certificate Authority setup script"
            exit 1
        fi
    fi
else
    echo "No CA files found."
fi

if [ $CERTPASSWORD = "<your-password>" ]; then
    echo
    echo "Please edit the global names in this script before running"
    echo "    Location = $CITY, $STATE, $COUNTRY"
    echo "    Name = $LASTNAME, $FIRSTNAME"
    echo "    email = $EMAIL"
    echo "    cert password = $CERTPASSWORD"
    echo "    FQDN = $FQDN"
    echo "    CA = $CA"
    echo
    echo " Feilure: Exiting Certificate Authority setup script"
fi


# Make backups of each file, in case they need to be restored
#
# This should only be done one time - don't make backups after changes have
# been made
#
echo
echo "Moving original files to *.backup in case they need to be recovered"
if [ -f "$KEYFILE" ]; then
    KEYBACKUP="$KEYFILE.backup"
    if [ ! -f "$KEYBACKUP" ]; then
        mv $KEYFILE $KEYBACKUP
    fi
fi

if [ -f "$CERTFILE" ]; then
    CERTBACKUP="$CERTFILE.backup"
    if [ ! -f "$CERTBACKUP" ]; then
        mv $CERTFILE $CERTBACKUP
    fi
fi

if [ -f "$CONFFILE" ]; then
    CONFBACKUP="$CONFFILE.backup"
    if [ ! -f "$CONFBACKUP" ]; then
        mv $CONFFILE $CONFBACKUP
    fi
fi


# Change to home directory and create certs directory
#
# Cannot use cd ~/. because when running as sudo it moves to /home/root instead of /home/pi
#
echo
echo "Creating directories and moving into certs directory"
cd $CERTDIR
echo "    certs directory:"
pwd

[ -d $CACERTSDIR ] && echo "    $CACERTSDIR directory exists" || mkdir $CACERTSDIR
cd $CERTSDIR
pwd
[ -d certs ] && echo "    certs directory exists" || mkdir certs
[ -d crl ] && echo "    crl directory exists" || mkdir crl
[ -d newcerts ] && echo "    newcerts directory exists" || mkdir newcerts
[ -d private ] && echo "    private directory exists" || mkdir private
sudo chown root:root private
sudo chmod 700 private
[ -f index.txt ] && echo "    index.txt exists" || rm index.txt
touch index.txt
[ -f serial ] && echo "    serial exists" || echo 01 > serial
[ -f crlnumber ] && echo "    crlnumber exists" || echo 01 > crlnumber

# Edit configuration file
#   Made backup above
#

# from beginning through [ CA_default ] no changes
# [ CA_default ] take the defaults
sed -i "s/.*demoCA.*/dir = $CERTSDIR/" openssl.cnf
#     x509 extensions are defined in openssl.cnf under the section usr_cert
# [ req ] no changes
# [ req_distinguished_name ]
sed -i "s/countryName.*= AU/countryName = $COUNTRY/" openssl.cnf
sed -i "s/stateOrProvinceName.*= State.*/stateOrProvinceName = $STATE/" openssl.cnf
sed -i "s/localityName.*= Locality.*/localityName = $CITY/" openssl.cnf
sed -i "s/0.organizationName.*= Organization.*/0.organizationName = $LASTNAME/" openssl.cnf
sed -i "s/organizationalUnitName.*= Organizational Unit.*/organizationalUnitName = $FIRSTNAME/" openssl.cnf
sed -i "s/commonName.*= Common Name.*/commonName = $CA/" openssl.cnf
sed -i "s/emailAddress.*= Email Address.*/emailAddress = $EMAIL/" openssl.cnf
sed -i "s/challengePassword.*= A challenge.*/challengePassword = $CERTPASSWORD/" openssl.cnf
# [ usr_cert ]
#   CA must have CA:TRUE and pathlen=0
#   A 0 pathlen means the CA can only sign end user certificates and not CAs
sed -i "s/basicConstraints=CA:FALSE/basicConstraints=CA:TRUE, pathlen=0/" openssl.cnf
# [ v3_req ] - no changes
# [ v3_ca ]
sed -i "s/# keyUsage = cRLSign, keyCertSign/keyUsage= critical, cRLSign, digitalSignature, keyCertSign/" openssl.cnf
# [ crl ext ]
# [ proxy_cert_ext ]


#   I am unsure how to complete subjectAltName for NAT'd servers with no DNS
#   I'd prefer to use IP addresses
#
#subjectAltName          = @alt_ca
#[alt_names]
#IP.1 = 192.168.1.227
#EOF

# Generate Certificate Authority (CA)
#
#   Before creating server/client certificate, setup a self-signed Certificate Authority (CA),
#   which can be used to sign the server/client certificates. Once created, the CA cert will
#   act as the trusted authority for both your server and client certificates (or certs).
#
echo
echo "Generate Certificate Authority (CA)"
echo


# Generate Certificate Authority private key (cakey.pem) and cert (cacert.pem)
#
#     openssl req = request command (openssl req -help)
#     -new = new request
#     -x509 = output x509 structure
#     -nodes = don't encrypt the output key
#     -sha256 = encryption
#     -days = number of days the cert is valid
#     -config = request templayte file
#     -keyform PEM = human readable form
#     -keyout = CA key
#     -outform PEM = human readbale form
#     -out = CA cert
openssl req -config $CERTSDIR/openssl.cnf -new -x509 -days $DAYS -keyform PEM -keyout $CERTSDIR/private/cakey.pem -outform PEM -out $CERTSDIR/certs/cacert.pem

# *** need to verify CA
echo
echo "Verify CA certificate"
openssl x509 -noout -text -in $CERTFILE

echo "Verify CA Key:"
openssl rsa -in $CERTFILE -check

echo
echo "Exiting Certificate Authority Script"

