#! /usr/bin/env python
#
# run using python3 weekly.py

import smtplib

# CHANGE THE ITEMS BELOW - DO NOT PUBLISH
#
#  Change the items enclosed by angle brackets and delete the angle barckets

gmail_password = '<your-throwaway-gmail password>'
gmail_address = '<your-throwaway-gmail-account>@gmail.com'
id = '<your-6-letter-project-id-from-genID.py>' # This is the ID gmail looks for to foward to your smart phone

#
# CHANGE THE ITEMS ABOVE - DO NOT PUBLISH

subject = id + " Weekly garage door email"
message = 'Subject: %s' % (subject)
# 587 uses TLS
# 465 uses SSL - not supported see edits to /etc/ssmtp/ssmtp.conf
mail = smtplib.SMTP("smtp.gmail.com", 587)
mail.ehlo()
mail.starttls()
mail.login(gmail_address, gmail_password)
mail.sendmail("cell", gmail_address, message)
mail.close()
