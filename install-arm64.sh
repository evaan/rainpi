#!/bin/sh
sudo mkdir -p /opt/cumbox
sudo chmod 777 /opt/cumbox
wget https://assets.checkra.in/downloads/linux/cli/arm64/32cc7d1bd687800d1b5bc5cfc4f4ca15f393dada7570e78742eab068b1f2a3e2/checkra1n -O /opt/cumbox/checkra1n
sudo chmod +x /opt/cumbox/checkra1n
sudo cp 01-cumbox.rules /etc/udev/rules.d
echo "cumbox is now installed!"
