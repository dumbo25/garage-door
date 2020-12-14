#! /usr/bin/env python
#
# check if the garage door is open.
# enter a  crontab: */5 * * * * sudo python /usr/local/bin/garage.py
# If open send an alert and write to syslog
#
# run using python3 garage.py

import smtplib
import os
import time
import datetime
import sys
import RPi.GPIO as GPIO
import sqlite3

####################
#
# DO NOT PUBLISH THE FOLLOWING
#
# change angle brackets to your values

gmail_password = '<your-gmail-password>'
gmail_address = '<your-throwaway-gmail-account>@gmail.com'
# The ID is what gmail searches for and fowards to your smart phone
# The ID is created by genID.py
ID = '<your-project-ID>' # This is the ID gmail searches for and fowards to your smart phone

#
# DO NOT PUBLISH THE ABOVE
####################

####################
#
# CONSTANTS
UP = 0
SENSOR = 24
WEEKDAYS = {0 : 'Monday', 1 : 'Tuesday', 2 : 'Wednesday', 3 : 'Thursday', 4 : 'Friday', 5 : 'Saturday', 6 : 'Sunday'}
DOOR = {0 : 'Open', 1 : 'Closed'}

db_file = '/var/www/db/garagedoor.db'

# Log messages should be time stamped
def timeStamp():
    t = time.time()
    s = datetime.datetime.fromtimestamp(t).strftime('%Y/%m/%d %H:%M:%S - ')
    return s

# Write messages in a standard format
def printMsg(s):
    print(timeStamp() + s)


def myMail(msg):
    subject = ID + " " + msg
    message = 'Subject: %s' % (subject)
    # 587 uses TLS
    # 465 uses SSL - not supported see edits to /etc/ssmtp/ssmtp.conf
    mail = smtplib.SMTP("smtp.gmail.com", 587)
    mail.ehlo()
    mail.starttls()
    mail.login(gmail_address, gmail_password)
    mail.sendmail("cell", gmail_address, message)
    mail.close()

if __name__ == '__main__':

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(SENSOR, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

    # wait for sensor pin to reach steady state before reading
    time.sleep(1)

    door = GPIO.input(SENSOR)
    printMsg("Door: " + DOOR[door])

    try:
        db_con = sqlite3.connect(db_file)
        db_cmd = db_con.cursor()

        if door == UP:
            # only need to check if door is open

            v = db_cmd.execute("select * from status where name = 'vacation';")
            for row in v:
                vacation = row[3]

            printMsg("Vacation: " + vacation)
            if vacation == "yes":
                # if on vacation and door is open
                # schedule doesn't matter, door should always be closed
                # send text message to close door
                myMail(" Garage: open while vacationing")

            elif vacation == "no":
                # if not on vacation

                s = db_cmd.execute("select * from status where name = 'schedule';")
                for row in s:
                    schedule = row[3]

                printMsg("Schedule: " + schedule)
                # if schedule is enabled
                if schedule == 'yes':
                    d = datetime.datetime.today().weekday()
                    day = WEEKDAYS[d]

                    # read schedule from database
                    t = db_cmd.execute("select * from schedule where day = '" + day + "';")
                    for row in t:
                        armTime = row[3]
                        disarmTime = row[4]

                    current_time = time.strftime("%H:%M:%S")
                    ct = time.strptime(current_time, "%H:%M:%S")
                    at = time.strptime(armTime, "%H:%M:%S")
                    dt = time.strptime(disarmTime, "%H:%M:%S")
                    mt = time.strptime("23:59:59", "%H:%M:%S")
                    zt = time.strptime("00:00:00", "%H:%M:%S")

                    # Door should not be open between arm time and midnight?
                    if at == dt:
                        myMail(" Garage: arm and disarm are same times")
                    elif at > dt:
                        if ct >= at and ct <= mt:
                            myMail(" Garage: open late at night")
                        elif ct >= zt and ct <=dt:
                            myMail(" Garage: open too early")
                    else:
                        # non-standard usage arm time is less than disarm time
                        if ct >= at and ct <= dt:
                            myMail(" Garage: open when should be closed")


    finally:
        db_con.close()
        GPIO.cleanup()

    
    
