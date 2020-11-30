#!/susr/bin/python

#########################
#
# toggle.py electronically pushes a button on a garage door's
# universla remote
#
# toggle.py disregards the state of the door
#
# The complete project is described here:
#  https://sites.google.com/site/cartwrightraspberrypiprojects/home/home-automation-categories/access-control/garage-door-opener
#
# toggle.py was tested on a Raspberry Pi Zero WH running Raspberry Pi OS
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
#########################

import os
from time import sleep
import signal
import sys
import RPi.GPIO as GPIO

PRESS = 23

GPIO.setmode(GPIO.BCM)
GPIO.setup(PRESS, GPIO.OUT)

GPIO.output(PRESS, GPIO.LOW)
sleep(1)
GPIO.output(PRESS, GPIO.HIGH)
sleep(1)

GPIO.cleanup()
