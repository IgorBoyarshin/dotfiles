#!/usr/bin/zsh

# export DISPLAY=:0
# export XAUTHORITY=/home/igorek/.Xauthority

# xrandr --setprovideroutputsource modesetting 0x0
# xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --noprimary --output "HDMI-0" --off --output "eDP-1-1" --auto --primary
