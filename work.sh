# Pomodoro Work Script
# The 55 minute timer + logger for my productivity.

clear
echo Enter task name:
read x
sleep 55m
echo $(date +%Y-%m-%d): $x >> log.txt
y=$(cat web.txt)
z=$((y+5))
rm web.txt
echo $z >> web.txt
