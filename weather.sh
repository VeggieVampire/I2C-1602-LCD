#curl -sS "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22tulsa%2C%20ok%22)&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"|sed -n  '32p'|awk '{print $1$2$3}'| rev | cut -c 4- | rev; echo $(date)|awk '{print $4}'
station=KTUL
Temperature="F"
weather=$(curl -sS "http://w1.weather.gov/xml/current_obs/display.php?stid=$station"|sed -n  '31p'|awk '{print $1$2$3$4$5$6}'| awk -F'[<|>]' '{print $3}')
#temp=$(curl -sS "http://w1.weather.gov/xml/current_obs/display.php?stid=$station"|sed -n  '32p'|awk '{print $1$2$3$4$5$6}'|awk -F'[<|>]' '{print $3}')
TTime=$(echo $(date)|awk '{print $4}'|rev | cut -c 4- | rev)
HHour=$(echo $(date)|awk '{print $4}'|rev | cut -c 7- | rev)
MMin=$(echo $(date)|awk '{print $4}'|rev | cut -c 4- | rev| cut -c 4-)

tempAll=$(curl -sS "http://w1.weather.gov/xml/current_obs/display.php?stid=$station"|sed -n  '32p'|awk '{print $1$2$3$4$5$6}'|awk -F'[<|>]' '{print $3}')
if [ "$Temperature" == "F" ];then
temp=${tempAll:0:5}
else 
temp=${tempAll:6:5}
fi



PostMeridiem="AM"
if [ "$HHour" -gt 12 ]
then
    NHour=$(expr $HHour - 12)
	HHour=$NHour
	PostMeridiem="PM"
fi

MTime=$(echo $(date)|awk '{print $4}'|rev | cut -c 4- | rev)
#If you want military time use MTime below.
#printf "$weather \n"
#printf "$temp$MTime \n"

#standard time with ante meridiem which is Latin for Before Midday and PM  for Post Meridiem
printf "$weather \n"
printf "$temp...$HHour:$MMin$PostMeridiem \n"
