#!/bin/python
#This script was authored by AndrewH7 and belongs to him (www.instructables.com/member/AndrewH7)
#Use this script at your own risk

import RPi.GPIO as GPIO
import os

gpio_pin_number=07

GPIO.setmode(GPIO.BCM)

while True:
	GPIO.setup(gpio_pin_number, GPIO.IN, pull_up_down=GPIO.PUD_UP)

	try:
	    GPIO.wait_for_edge(gpio_pin_number, GPIO.FALLING)
	    os.system("/opt/cumbox/ipwndfu/ipwndfu -p")
	except:
	    pass

GPIO.cleanup()