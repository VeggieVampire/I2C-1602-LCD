sudo apt-get install i2c-tools
sudo apt-get install python-smbus
sudo echo "i2c-bcm2708">>/etc/modules
sudo echo "i2c-dev">>/etc/modules
echo "You need to reboot"
