sudo date -s "$(curl -s --head http://google.com | grep ^Date: | sed 's/Date: //g')"
echo "date and time have been updated!"
