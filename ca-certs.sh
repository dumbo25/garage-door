#!/bin/bash

# bash script to create Certifcate Authority

# run as:
#   sudo bash ca-certs.sh

# exit on error
set -e

# defines values for private data that should not be shared
source private-data.sh

CACERTFILE="$MYCERTSDIR/$CACRT.pem"
CAKEYFILE="$MYCERTSDIR/$CAKEY.pem"

CADAYS=3650

echo "Starting Certificate Authority Script"

# The script must run as sudo. If not sudo, then exit
#
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with: sudo bash ca-certs.sh"
    echo
    echo "Failure: Exiting Certificate Authority setup script"
    exit 1
fi

# must edit private data before runnning the script
if [[ "$EMAIL" == *"<"* ]]; then
    echo
    echo "Please edit the global names in private-data.sh before running"
    echo "    Location = $CITY, $STATE, $COUNTRY"
    echo "    Name = $LASTNAME, $FIRSTNAME"
    echo "    email = $EMAIL"
    echo "    cert password = $CERTPASSWORD"
    echo
    echo " Feilure: Exiting Certificate Authority setup script"
fi

# The script only needs to be run one time on a server
#
# If the ca-cert key and pem files exist then prompt user if they really want
# to continue. If they don't, then exit
#
if [ -f "$CACERTFILE" ]; then
    echo "CA cert file ($CACERTFILE) exists."
    if [ -f "$CAKEYFILE" ]; then
        echo "CA key file ($CAKEYFILE) exists."
        echo
        read -p "The CA files were created. Do you want to continue? " -r
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo
            echo "Failure: Exiting Certificate Authority setup script"
            exit 1
        fi
    fi
else
    echo "No CA files found."
fi

# outputs:
#   ca-crt.pem  ca-key.pem
echo
echo "Generate Certtificate Authority cert and key"
echo "   prompts for PEM Pass Phrase"
echo "$ openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -subj \"/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME\""
openssl req -new -x509 -days $CADAYS -keyout $CAKEYFILE -out $CACERTFILE -subj "/CN=$CANAME/emailAddress=$EMAIL/C=US/ST=$STATE/L=$CITY/O=$LASTNAME/OU=$FIRSTNAME"

echo
echo "   values that may be needed for other guides"
echo "     PEM Pass Phrase = $PEMPSWD"
echo "     Common Name for CA = $CANAME"
echo
echo "     Directory for cert files = $MYCERTS"
echo "       CA Cert File = $CACERTFILE"
echo "       CA KEY File = $CAKEYFILE"

echo
echo "SUCCESS: Exiting Certificate Authority Script"

