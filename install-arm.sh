#!/bin/sh
sudo mkdir -p /opt/cumbox
sudo chmod 777 /opt/cumbox
wget https://assets.checkra.in/downloads/linux/cli/arm/c5cbb125c6948b39383702b62cec4f184263c8db50f49b9328013213126dae78/checkra1n -P /opt/cumbox
sudo chmod +x /opt/cumbox/checkra1n
sudo cp 01-cumbox.rules /etc/udev/rules.d
echo "cumbox is now installed!"
