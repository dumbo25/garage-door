#!/susr/bin/python

#########################
#
# open.py opens a garage door by electronically closing a push button on
# a universla remote
#
# if the garage door is already open then no action is taken
#
# The complete project is described here:
#  https://sites.google.com/site/cartwrightraspberrypiprojects/home/home-automation-categories/access-control/garage-door-opener
#
# open.py is used in conjunction with fauxmo and Amazon Echo to control
# the garage door.
#
# The system requires a remote control, relay and a sensor
#
# open.py was tested on a Raspberry Pi Zero WH running Raspberry Pi OS
#
# The connections are as shown below:
#   RPi0 GND (physical pin 6) to Relay GND
#   RPi0 BCM GPIO 23 (physical pin 16, Wiring Pi pin 4) to Relay IN2
#   RPi0 5v (pin 2 or 4) to Relay VCC
#   Relay NO to Header Pin on Remote
#   Relay Power to 12V+ on Remote
#   RPi0 3.3v (physical pin1) to Sensor GND
#   RPi0 BCM GPIO 24 (physical pin 18, Wiring Pi pin 5) to Sensor output
#
# open.py is called rpi-echo.py
# rpi-echo.py starts automatically using systemd
#
#########################

import os
from time import sleep
import signal
import sys
import RPi.GPIO as GPIO

PRESS = 23
SENSOR = 24

GPIO.setmode(GPIO.BCM)
GPIO.setup(PRESS, GPIO.OUT)
GPIO.setup(SENSOR, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

# wait for sensor pin to reach steady state before reading
sleep(1)

open = GPIO.input(SENSOR)
# print ("open = " + str(open))
if open == 1:
    GPIO.output(PRESS, GPIO.LOW)
    sleep(1)
    GPIO.output(PRESS, GPIO.HIGH)
    sleep(1)

GPIO.cleanup()
