#!/usr/bin/zsh

read -r capacity < "/sys/class/power_supply/BAT0/capacity"
read -r is_online < "/sys/class/power_supply/AC/online"

if [ $capacity -ge 98 ]; then
    echo "CHARGED"
else
    if [ $is_online -eq 1 ]; then
        echo "Bat $capacity++"
    else
        echo "Bat $capacity--"
    fi
fi
