#!/bin/bash

# bash script to create server-side cert

# run as:
#   sudo bash server.sh

# exit on error
set -e

# defines values for private data that should not be shared
source private-data.sh

CACERTFILE="$MYCERTSDIR/$CACRT.pem"
CAKEYFILE="$MYCERTSDIR/$CAKEY.pem"

SERVERCERTFILE="$MYCERTSDIR/server-crt.pem"
SERVERKEYFILE="$MYCERTSDIR/server-key.pem"
SERVERREQUESTFILE="$MYCERTSDIR/server-csr.pem"

DAYS=365

echo "Starting Client-side Cert Script"
echo

# The script must run as sudo. If not sudo, then exit
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash server.sh"
    echo
    echo "Failure: Exiting Client-side Cert Script"
    exit 1
fi

if [ ! -f "$CACERTFILE" ] || [ ! -f $CAKEYFILE ]; then
    echo "ca-certs.sh must be run first"
    echo
    echo "Failure: Exiting Client-side Cert Script"
    exit 1
fi

if [ ! -f "$SERVERCERTFILE" ]; then
    echo "server.sh must be run first"
    echo
    echo "Failure: Exiting Client-side Cert Script"
    exit 1
fi


echo "Enter username or client side device name"
echo
read -p 'Username: ' CLIENT
if [ $CLIENT == "" ]; then
    echo "Username must not be blank"
    echo
    echo "Failure: Exiting Client-side Cert Script"
    exit 1
else
    CLIENTCERTFILE="$MYCERTSDIR/$CLIENT-crt.pem"
    if [ -f "$CLIENTCERTFILE" ]; then
        echo "Failure: cert for $CLIENT already exists"
        echo
        echo "Failure: Exiting Client-side Cert Script"
        exit 1
    fi
    CLIENTKEYFILE="$MYCERTSDIR/$CLIENT-key.pem"
    CLIENTREQUESTFILE="$MYCERTSDIR/$CLIENT-csr.pem"
    CLIENTP12="$MYCERTSDIR/$CLIENT.p12"
fi


echo
echo "   Generate Client-side key"
echo
echo "openssl genrsa -out $CLIENTKEYFILE 4096"
openssl genrsa -out $CLIENTKEYFILE 4096

echo
echo "   Generate Client-side request"
echo
echo "openssl req -new -sha256 -key $CLIENTKEYFILE -out $CLIENTREQUESTFILE -subj \"/CN=$COMMONNAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME\""
openssl req -new -sha256 -key $CLIENTKEYFILE -out $CLIENTREQUESTFILE -subj "/CN=$COMMONNAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"

echo
echo "   Generate Client-side cert"
echo
echo "openssl x509 -req -days 365 -in $CLIENTREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -CAcreateserial -out $CLIENTCERTFILE"
openssl x509 -req -days $DAYS -in $CLIENTREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -CAcreateserial -out $CLIENTCERTFILE

echo
echo "   Generate pkcs12 file to install on $CLIENT"
echo
echo "openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTP12"
openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTP12

echo
echo "   Changing mode and copying to home directory"
echo
echo "   Allows p12 file to be read and copied to device. This needs to be changed back to sudo chmod 600 after installed on device"
chmod +r $CLIENTP12
cp $CLIENTP12 /home/pi/.

echo
echo "   Generate pkcs12 file to install on $CLIENT"
echo
echo "openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTPFX"
openssl pkcs12 -export -inkey $CLIENTKEYFILE -in $CLIENTCERTFILE -out $CLIENTPFX

echo
echo "   Changing mode and copying to home directory"
echo
chmod +r $CLIENTPFX
cp *.pfx ../.


#verify cert ???
echo
echo "   Verify Client-side cert"
echo
echo "sudo openssl verify -CAfile $CACERTFILE $CLIENTCERTFILE"
sudo openssl verify -CAfile $CACERTFILE $CLIENTCERTFILE


echo
echo
echo "Exiting Client-side Cert Script"


