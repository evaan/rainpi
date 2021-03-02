#!/bin/sh
sudo mkdir -p /opt/rainpi
sudo chmod 777 /opt/rainpi
wget https://assets.checkra.in/downloads/linux/cli/arm/f060f8e27005b553de42b04abd0af6b18eeacd005e68b126e991c6096f51b0b7/checkra1n -O /opt/rainpi/checkra1n
sudo chmod +x /opt/rainpi/checkra1n
sudo cp 01-rainpi.rules /etc/udev/rules.d
echo "rainpi is now installed!"
