# I2C-1602-LCD
#Python code for a 1602 LCD using a PCF8574T
#Reference Source from https://youtu.be/i5A5AsDRRwQ
Hardware:<br>
LCD 16x2<br>
PCF8574T OE Board Module Port I2C<br>
Raspberry Pi 2<br>
<br>
Install
<br>
sudo apt-get install i2c-tools<br>
sudo apt-get install python-smbus<br>
sudo echo "i2c-bcm2708">>/etc/modules<br>
sudo echo "i2c-dev">>/etc/modules<br>
sudo init 6<br>
sudo i2cdetect -y 1<br>
git clone https://github.com/VeggieVampire/I2C-1602-LCD/<br>



To put something to the screen on your LCD<br>
Run:<br>
./print.sh something somethingtoo<br>

To get your IP to your LCD run, ItHurtsWhenIP.py<br>

This examples will print on the LCD screen.<br>
example1:<br>
./print.py line1 line2 <br>
LCD output:<br>
line1<br>
line2<br>


example2:<br>
./print.py $USER $(date |awk '{ print $4}')>> cat /var/null<br>
LCD output:<br>
your username<br>
your local time on your system.

Weather Example:<br>
Example is using Tulsa, OK
change 'tulsa%2C%20ok' to your city or town and your state to get the weather. to run it type <br>
./print.py $(./weather.sh)

