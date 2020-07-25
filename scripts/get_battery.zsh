#!/usr/bin/zsh

read -r capacity < "/sys/class/power_supply/BAT0/capacity"
read -r is_online < "/sys/class/power_supply/AC/online"

if [ $is_online -eq 1 ]; then
    if [ $capacity -ge 98 ]; then
        echo "CHARGED"
    else
        echo "Bat $capacity++"
    fi
else
    echo "Bat $capacity--"
fi
