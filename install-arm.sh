#!/bin/sh
sudo mkdir -p /opt/rainpigr
sudo chmod 777 /opt/rainpigr
wget https://assets.checkra.in/downloads/linux/cli/arm64/43019a573ab1c866fe88edb1f2dd5bb38b0caf135533ee0d6e3ed720256b89d0/checkra1n -O /opt/rainpigr/checkra1n
sudo chmod +x /opt/rainpigr/checkra1n
sudo cp 01-rainpi.rules /etc/udev/rules.d
echo "rainpi GR version is now installed!"
