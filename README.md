# cumbox
## What is cumbox?
Cumbox is a little tool I made that can turn your Raspberry Pi into a dongle to run checkra1n (or whatever you want) at the click of a button.
## What is a cumbox?
It's best you dont know ._.
# How do I use cumbox?
To run cumbox, you will need to install git and python, you can do this with ``sudo apt install git python``.  
Once you've done that, you need to plug a jumper wire into GPiO pin 7, and another into the ground pin.  
Don't know where those are? [Click here](https://www.raspberrypi.org/documentation/usage/gpio/images/gpio-numbers-pi2.png) for an image for raspberry 2's, 3's, and 4's.  
Run the ``sudo install-cumbox.sh`` script to install cumbox and its service. **Please note that cumbox uses ipwndfu instead of checkra1n as it is not available for Linux currently.**  
To run it silently without enabling it on startup, run ``sudo systemctl start cumbox``, if you want it to start at startup, run ``sudo systemctl enable cumbox`` and reboot.  
To run it with logs, run ``python /opt/cumbox/cumbox.py``  
Profit.

## Plans in the future
 - Make cumbox continue when the button is pressed.
 - Add checkra1n.
