#!/usr/bin/env python

import time

import RPi.GPIO as GPIO

PRESS = 23

GPIO.setmode(GPIO.BCM)
GPIO.setup(PRESS, GPIO.OUT)
GPIO.output(PRESS, GPIO.LOW)

time.sleep(0.25)

GPIO.output(PRESS, GPIO.HIGH)

GPIO.cleanup()
