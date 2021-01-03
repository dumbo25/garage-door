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

echo "Starting Server-side Cert Script"
echo

# The script must run as sudo. If not sudo, then exit
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash server.sh"
    echo
    echo "Failure: Exiting Server-side Cert Script"
    exit 1
fi

if [ ! -f "$CACERTFILE" ] || [ ! -f "$CAKEYFILE" ]; then
    echo "ca-certs.sh must be run first"
    echo
    echo "Failure: Exiting Server-side Cert Script"
    exit 1
fi

# Generate Signed Server Certificate
#   generate a private key for the server
echo
echo "   Generate Server-side key"
echo
echo "openssl genrsa -out $SERVERKEYFILE 4096"
openssl genrsa -out $SERVERKEYFILE 4096

#   generate a signing request
echo
echo "   Generate Server-side request"
echo
echo "openssl req -new -sha256 -key $SERVERKEYFILE -out $SERVERREQUESTFILE -subj \"/CN=$COMMONNAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME\""
openssl req -new -sha256 -key $SERVERKEYFILE -out $SERVERREQUESTFILE -subj "/CN=$COMMONNAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"

#    generate server cert
echo
echo "   Generate Server-side cert"
echo "      prompts for PEM Pass Phrase created during ca-certs.sh"
echo
echo "openssl x509 -req -days $DAYS -in $SERVERREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -CAcreateserial -out $SERVERCERTFILE"
openssl x509 -req -days $DAYS -in $SERVERREQUESTFILE -CA $CACERTFILE -CAkey $CAKEYFILE -CAcreateserial -out $SERVERCERTFILE

#check if server cert is okay
echo
echo "   Verify Server-side cert works with CA cert"
echo
echo "sudo openssl verify -CAfile $CACERTFILE $SERVERCERTFILE"
sudo openssl verify -CAfile $CACERTFILE $SERVERCERTFILE

echo
echo
echo "Exiting Server-side Cert Script"
