#!/bin/sh

# EVANS CUMBOX INSTALLER NO STEALY STEALY
# WEBSITE: CUMBOX.BEST
# ALL STEALY STEALIERS WILL BE SHOT ON SIGHT!!

# clone ipwndfu since checkra1n is not available atm
git clone https://github.com/axi0mX/ipwndfu

# make the cumbox directory
sudo mkdir /opt/cumbox

#chmod it
sudo chmod 777 /opt/cumbox

#move things in it
sudo mv ipwndfu /opt/cumbox
sudo mv cumbox.py /opt/cumbox

#move things in systemd services folder
mv cumbox.service /lib/systemd/system

echo "================================================="
echo "cumbox is now installed! to start cumbox run:"
echo "sudo systemctl start cumbox"
echo "to start cumbox on boot, run:"
echo "sudo systemctl enable cumbox"
echo "================================================="
