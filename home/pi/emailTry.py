#! /usr/bin/env python
import smtplib

# Change the items in the angle brackets
# Remove the angle brackets
gmail_password = '<your-gmail-password>'
gmail_address = '<your-gmail-account>@gmail.com'
# your carrier's way to send texts via email to your cellphone - see image above
cellphone = '<your-phone-number>@txt.att.net'
#
# CHANGE THE ITEMS ABOVE - DO NOT PUBLISH

subject = "Garage Door Open"
message = 'Subject: %s' % (subject)
# 587 uses TLS
# 465 uses SSL - not supported see edits to /etc/ssmtp/ssmtp.conf
mail = smtplib.SMTP("smtp.gmail.com", 587)
mail.ehlo()
mail.starttls()
mail.login(gmail_address, gmail_password)
mail.sendmail("cell", cellphone, message)
mail.close()

print 'text message sent'
