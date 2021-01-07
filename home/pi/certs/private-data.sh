#!/bin/bash

#  this file includes private-data that should not be published or shared

#   **** DO NOT PUBLISH ITEMS BELOW ****
#
#   Replace values and angle brackets below with your values
#
COUNTRY="<your-two-letter-country-code>"
STATE="<your-state-or-province>"
CITY="<your-city>"
LASTNAME="<your-company-or-lastname>"
FIRSTNAME="<your-business-unit-or-firstname>"
EMAIL="<your-throw-away-gmail-account>@gmail.com"
CERTPASSWORD="<your-throw-away-gmail-password>"

# The Common Name used for the CA (CAANAME) should not be the same as the one used for server or client certs (COMMONNAME)
# For example: serverName.duckdns.org
COMMONNAME="<your-DNS-name>" 
CANAME="cacert"

# you can change these to whatever you would like
MYCERTSDIR="/home/pi/certs"
CACRT="ca-crt"
CAKEY="ca-key"

#
#   Replace values above in angle brackets with your values
#
#   **** DO NOT PUBLISH ITEMS ABOVE ****
