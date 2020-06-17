#!/usr/bin/zsh

export DISPLAY=:0
export XAUTHORITY=/home/igorek/.Xauthority

# xrandr --setprovideroutputsource modesetting 0x0
# xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --nograb --auto --dpi 96 --noprimary
xrandr --nograb --noprimary --output "eDP-1-1" --off
xrandr --nograb --output "HDMI-0" --off
sleep 2

xrandr --nograb --output "HDMI-0" --auto --primary
