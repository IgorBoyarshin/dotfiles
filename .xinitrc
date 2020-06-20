#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# xrandr --setprovideroutputsource modesetting NVIDIA-0
# xrandr --auto
~/scripts/mon_large.zsh

# To be able to use custom scripts for brightness
# sudo chmod a+w /sys/class/backlight/intel_backlight/brightness

~/scripts/fehbg.sh &

# Prepare the pipe for the volume control for xmobar and execute the script
# once in order to give initial value for xmobar through the pipe.
# _volume_pipe=/tmp/.volume-pipe
# [[ -S $_volume_pipe ]] || mkfifo $_volume_pipe
# ~/.set-volume.zsh &

# [[ -f ~/.Xresources ]] && xrdb ~/.Xresources

# MPD
mpd &

# exec $HOME/.local/bin/xmonad > $HOME/.xmonad/log.txt 2>&1

~/scripts/reload_audio_variables.zsh &

# Remove screen turning off (energy savings after 10min)
xset dpms 0 0 0
xset s off -dpms

dwmblocks &
picom &
exec ~/scripts/start_dwm.zsh
