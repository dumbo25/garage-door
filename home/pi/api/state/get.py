# gets state of the garage door

from time import sleep
import RPi.GPIO as GPIO

global Data

SENSOR = 24

GPIO.setmode(GPIO.BCM)
GPIO.setup(SENSOR, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

# wait for sensor pin to reach steady state before reading
sleep(1)

open = GPIO.input(SENSOR)
GPIO.cleanup()
s = 'closed'
if open == 0:
    s = 'open'

Data = {"Garage Door": s}
