#!/usr/bin/python
import lib
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("gmail.com",80))
yourIP = s.getsockname()[0]
s.close()
line1="What Is My IP?"
line2= yourIP
#print line1
#print yourIP
lcd = lib.lcd(0x27,1)
lcd.lcd_write(0x01);
lcd.lcd_puts(line1,1) 
lcd.lcd_puts(line2,2) 
lcd.lcd_backlight(1)
