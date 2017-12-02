# Pomodoro Play Script
# The thing that allows me to spend the internet free time I've earned.

clear
echo How many minutes would you like to use?: 
read x
y=$(cat web.txt)
if [ $x -gt $y ]
then echo ERROR: Not enough minutes.
else
clear && sudo wifi-menu -o && z=$((y-x)) && echo Beginning free time && sleep $((x))m && rm web.txt && echo $z >> web.txt && sudo killall wpa_supplicant
fi
