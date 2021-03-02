#!/bin/sh
sudo mkdir -p /opt/rainpi
sudo chmod 777 /opt/rainpi
wget https://assets.checkra.in/downloads/linux/cli/arm64/11c0a214dc0fc19050a8103ed5b0ebf4874df3191e34491e177f3af3baced0e7/checkra1n -O /opt/rainpi/checkra1n
sudo chmod +x /opt/rainpi/checkra1n
sudo cp 01-rainpi.rules /etc/udev/rules.d
echo "rainpi is now installed!"
