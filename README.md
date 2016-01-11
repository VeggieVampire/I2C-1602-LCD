# I2C-1602-LCD
#Python code for a 1602 LCD using a PCF8574T
#Reference Source from https://youtu.be/i5A5AsDRRwQ

To put something to the screen on your LCD type, ./print.sh something somethingtoo

To get your IP to your LCD run, ItHurtsWhenIP.py
This examples will print on the LCD screen.

example1:
./print.py line1 line2 
LCD output:
line1
line2


example2:
./print.py $USER $(date |awk '{ print $4}')>> cat /var/null
LCD output:
your username
your local time on your system.


