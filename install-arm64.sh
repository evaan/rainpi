#!/bin/sh
sudo mkdir -p /opt/cumbox
sudo chmod 777 /opt/cumbox
wget https://assets.checkra.in/downloads/linux/cli/arm64/b48774e5d240ce192016a3fa97df7ef855220576f0704c83ed627d092cb2e224/checkra1n -O /opt/cumbox/checkra1n
sudo chmod +x /opt/cumbox/checkra1n
sudo cp 01-cumbox.rules /etc/udev/rules.d
echo "cumbox is now installed!"
