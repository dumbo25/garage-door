#! /usr/bin/env python
#
# run using python3 weekly.py

import smtplib

# CHANGE THE ITEMS BELOW - DO NOT PUBLISH
#  Change the items enclosed by angle brackets and delete the angle barckets
gmail_password = '<your-throw-away-gmail-account-password>'
gmail_address = '<your-throw-away-gmail-account>@gmail.com'
#
# CHANGE THE ITEMS ABOVE - DO NOT PUBLISH

subject = "Weekly garage door email"
message = 'Subject: %s' % (subject)
# 587 uses TLS
# 465 uses SSL - not supported see edits to /etc/ssmtp/ssmtp.conf
mail = smtplib.SMTP("smtp.gmail.com", 587)
mail.ehlo()
mail.starttls()
mail.login(gmail_address, gmail_password)
mail.sendmail("cell", gmail_address, message)
mail.close()
