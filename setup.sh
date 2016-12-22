sudo apt-get -y install i2c-tools
sudo apt-get -y install python-smbus
sudo echo "i2c-bcm2708">>/etc/modules
sudo echo "i2c-dev">>/etc/modules
echo "You need to reboot"
