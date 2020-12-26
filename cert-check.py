#! /usr/bin/env python
#
# This script is intended to be run as a cron job to check if a cert is expiring
#
# Run the script in crontab using something like
#
#   0 12 * * * python3 ca-expiry.py > /DEV/NULL

import smtplib
import os
import time
import datetime
import subprocess
import sys
import getopt

# CHANGE THE ITEMS BELOW - DO NOT PUBLISH
#  Change the items enclosed by spades
#  Remove the spades

gmail_password = '<your gmail password>'
gmail_address = '<your throwaway gmail account>@gmail.com'
ID = '<your project ID>' # This is the ID gmail fowards to your smart phone

#
# CHANGE THE ITEMS ABOVE - DO NOT PUBLISH

Days = 140
Cert = "/home/pi/ca-certs/certs/cacert.pem"

def cmdLine(argv):
    global Days
    global Cert

    port_set = False
    try:
        # new options must be added here:
        validOpts = "c:d:"
        opts, args = getopt.getopt(argv,validOpts,["help=", "days=", "cert="])
    except getopt.GetoptError:
        print('cert-check.py [options, ...]' )
        print('cert-check.py -h' )
        sys.exit(2)

    for opt, arg in opts:
        # help option goes first and exits, regardless of other options
        if opt in ('-h', "--help"):
            print('Decription: ')
            print('  cert-check determines if a cert is expiring within days of today')
            print('')
            print('Usage:')
            print('  python3 cert_check.py [options...]')
            print('')
            print('Options:')
            print('  -h --help           this help')
            print('  -d --days           days')
            print('  -c --cert           path and crt file to check')
            sys.exit()
        elif opt in ("-d", "--days"):
            Days = int(arg)
        elif opt in ("-c", "--cert"):
            Cert = arg
    return

def send_text():
    subject = ID + " Garage Door: CA cert expiring"
    message = 'Subject: %s' % (subject)
    # 587 uses TLS
    # 465 uses SSL - not supported see edits to /etc/ssmtp/ssmtp.conf
    mail = smtplib.SMTP("smtp.gmail.com", 587)
    mail.ehlo()
    mail.starttls()
    mail.login(gmail_address, gmail_password)
    mail.sendmail("cell", gmail_address, message)
    mail.close()

# get the expiration date from a certificate
def ssl_expiry():
    # write output from command for expiration date to a file
    cmd = "openssl x509 -enddate -noout -in " + Cert + " > tmp.txt"
    subprocess.call(cmd, shell=True)

    # read the file and get the time
    f = open("tmp.txt", "r")
    result = f.readline()
    result = result[9:]
    result = result.rstrip()
    # print("time [" + result + "]")
    # parse the string from the certificate into a Python datetime object
    # sample date: Dec 24 23:13:35 2021 GMT
    struct_t = time.strptime(result, "%b %d %H:%M:%S %Y %Z")
    # print ("tuple : ", struct_t)

    float_t = time.mktime(struct_t)
    dt = datetime.datetime.fromtimestamp(float_t)
    return dt

def main(sysargv):
    # print("Starting cert-check.py")

    # process command line arguments
    cmdLine(sysargv[1:])
    # print("days = " + str(Days))
    # print("cert = " + Cert)

    # get the cert's expiration date
    expiry_time = ssl_expiry()

    # get today's date
    now = datetime.datetime.now()

    # get difference between now and expiration date
    delta = expiry_time - now

    # if today's date is between ((expiration date - period) and (expiration date)) then send alert
    if delta.days < Days:
        send_text()

#########################
if __name__ == '__main__':
    # run as a script from command line
    main(sys.argv)
else:
    # ??? could allow import to another module; needs work
    pass
