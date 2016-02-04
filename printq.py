#!/usr/bin/python
import lib
import sys

# Get the total number of args passed to the demo.py
total = len(sys.argv)


# Get the arguments list 
cmdargs = str(sys.argv)


line1 = str(sys.argv[1])
line2 = str(sys.argv[2])

lcd = lib.lcd(0x27,1)
lcd.lcd_write(0x01);
lcd.lcd_puts(line1,1) 
lcd.lcd_puts(line2,2) 
lcd.lcd_backlight(1)
