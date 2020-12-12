#!/susr/bin/python

#########################
#
# state.py returns whether a garage door is open or closed
#
# The complete project is described here:
#  https://sites.google.com/site/cartwrightraspberrypiprojects/home/home-automation-categories/access-control/garage-door-opener
#
# state.py is used in conjunction with fauxmo and Amazon Echo to control
# the garage door.
#
# The system requires a remote control, relay and a sensor
#
# state.py was tested on a Raspberry Pi Zero WH running Raspberry Pi OS
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
# close.py is called rpi-echo.py
# rpi-echo.py starts automatically using systemd
#
#########################

import os
from time import sleep
import signal
import sys
import RPi.GPIO as GPIO

SENSOR = 24

GPIO.setmode(GPIO.BCM)
GPIO.setup(SENSOR, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

# wait for sensor pin to reach steady state before reading
sleep(1)

open = GPIO.input(SENSOR)
GPIO.cleanup()
if open == 0:
    sys.exit(0)
else:
    sys.exit(1)
