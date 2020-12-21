#!/bin/bash

# bash script to create server and client-side certs

# run as:
#   sudo bash certs.sh
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash certs.sh"
    exit 1
fi

# Global names
#   Most systems have many certs. So, name your cert appropriately. For example, my ♣hostname♣
#   for a Raspberry Pi garage door opener is rpigarageopener, and a descriptive name for the
#   cert might be garage-opener.  I chose to use garage-opener where ♣certname♣ appears below.
#
#   Most cerst are now limited to 365 days or less
DAYS="365"
# Edit the items below and put in your own values
HOMEDIR="/home/pi"
CERTNAME="your-cert-name"
CERTSDIR="certs"
COUNTRY="your-country"
STATE="your-state"
CITY="your-city"
COMPANY="your-lastname"
UNIT="your-firstname"
# The Common Name for the CA cannot be the same as the server or client (i.e., CA != FQDN)
FQDN="$HOSTNAME"
CA="CERTAUTH"
EMAIL=""
PASSWORD="your-password"

echo
echo "Be sure to edit global names in this script before running"
echo

# move to home directory and create certs directory
cd $HOMEDIR
echo "home directory:"
pwd

echo
echo "Make certs directory"
[ -d $CERTSDIR ] && echo "$CERTSDIR directory exists" || mkdir CERTSDIR
cd $CERTSDIR
pwd

# Remove old files
echo
echo "Remove old CA files"
rm *-ca.*
echo
echo "Remove old server files"
rm *-server.*
echo
echo "Remove old client files"
rm *-client.*
# Generate Certificate Authority (CA)
#
#   Before creating server/client certificate, setup a self-signed Certificate Authority (CA),
#   which can be used to sign the server/client certificates. Once created, the CA cert will
#   act as the trusted authority for both your server and client certificates (or certs).
#
echo
echo "Generate Certificate Authority (CA)"
echo

openssl req -newkey rsa:4096 -keyform PEM -keyout $CERTNAME-server-ca.key -x509 -new -nodes -sha256 -days $DAYS -outform PEM -out $CERTNAME-server-ca.pem<<EOF
$COUNTRY
$STATE
$CITY
$COMPANY
$UNIT
$CA
$EMAIL
EOF

echo
echo "Created Certificate Authority (CA) files:"
ls *-ca.*

# Generate server side request, key and cert
echo
echo "Generate server-side"
echo "  Generate key"
echo
openssl genrsa -out $CERTNAME-server.key 4096

# Generate certificate request
echo
echo "  Generate request"
echo

sudo openssl req -new -key $CERTNAME-server.key -out $CERTNAME-server.req<<EOF
$COUNTRY
$STATE
$CITY
$COMPANY
$UNIT
$FQDN
$EMAIL
$PASSWORD
$COMPANY
EOF

# Use the certificate request and CA cert to generate the server cert
echo
echo "  Use request and CA to generate the server cert"
echo
sudo openssl x509 -req -in $CERTNAME-server.req -CA $CERTNAME-server-ca.pem -CAkey $CERTNAME-server-ca.key -set_serial 100 -extensions server -days $DAYS -outform PEM -out $CERTNAME-server.pem

echo
echo "Server-side files created:"
ls *-server.*

# Copy CA cert to a permanent place
echo
echo "Copy CA cert to a permanent place"
echo
cp $CERTNAME-server-ca.pem /etc/ssl/certs/.

# Copy server cert and private key to permanent place
echo
echo "Copy server cert and private key to permanent place"
echo
sudo cp $CERTNAME-server.pem /etc/ssl/certs/.
sudo cp $CERTNAME-server.key /etc/ssl/private/.

# Generate client-side request, key and cert
echo
echo "Generate client-side"
echo "  Generate key"
echo
sudo openssl genrsa -out $CERTNAME-client.key 4096

echo
echo "  Generate request using the client private key"
echo
sudo openssl req -new -key $CERTNAME-client.key -out $CERTNAME-client.req<<EOF
$COUNTRY
$STATE
$CITY
$COMPANY
$UNIT
$FQDN
$EMAIL
$PASSWORD
$COMPANY
EOF

echo
echo "  Generate client-side cert using request and CA"
echo
openssl x509 -req -in $CERTNAME-client.req -CA $CERTNAME-server-ca.pem -CAkey $CERTNAME-server-ca.key -set_serial 101 -extensions client -days $DAYS -outform PEM -out $CERTNAME-client.pem

echo
echo "  Convert the client certificate and private key to pkcs#12 format for use by a client browsers"
echo
# When prompted, enter the <cert-password>
openssl pkcs12 -export -inkey $CERTNAME-client.key -in $CERTNAME-client.pem -out $CERTNAME-client.p12<<EOF
$PASSWORD
$PASSWORD
EOF

echo
echo "Client-side files created:"
ls *-client.*

# When prompted, enter an  <export-password>
# chmod +r $CERTNAME-client.p12

# Clean up – remove the client private key, client cert and client request files as the pkcs12 has everything needed.
# rm $CERTNAME-client.key $CERTNAME-client.pem $CERTNAME-client.req

echo
echo "Verify if certs are valid"
echo
openssl verify -CAfile $CERTNAME-server-ca.pem $CERTNAME-server.pem $CERTNAME-client.pem


