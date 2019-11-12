#!/bin/sh
# ====================================
# cumbox Installer 2.0 by Evan.
# Website: https://cumbox.best
# ====================================
echo "Installing dialog..."
sudo apt install dialog
dialog --title "cumbox Installer"  --infobox 'Fetching Dependencies...' 10 50;sleep 3
sudo apt install git
dialog --title "cumbox Installer" --msgbox "Welcome to the cumbox Installer, this will automate the installation. Please press enter to continue." 25 100
# Commented until udev fixed
# dialog --title "cumbox Installer" --yesno "Would you like to use the udev version, this will automaitcally run the command once the iDevice has been plugged in.\n\nIt is highly recommended that you do this as it will be much more lightweight.\n\nIf you do not want the udev version, you can select no to install the python version." 25 100
# Make and chmod the cumbox files directory
sudo mkdir /opt/cumbox
sudo chmod 777 /opt/cumbox
# Clone ipwndfu since checkra1n is not available
git clone https://github.com/axi0mx/ipwndfu/ /opt/cumbox/ipwndfu
response=$?
case $response in
    0)  sudo mv udev/99-cumbox.rules /etc/udev/rules.d
        sudo udevadm control --reload;;

    1)  sudo apt install python python-rpi.gpio
        sudo mv python/cumbox.py /opt/cumbox
        sudo mv python/cumbox.service /lib/systemd/system
        echo "================================================="
        echo "cumbox is now installed! to start cumbox run:"
        echo "sudo systemctl start cumbox"
        echo "to start cumbox on boot, run:"
        echo "sudo systemctl enable cumbox"
        echo "=================================================";;
    255) echo "Stopped Script: Escape Key Pressed.";;
esac