#!/usr/bin/zsh

# xev -event keyboard
# Useful utility to track keypresses

case $1 in
    "on")
        xmodmap -e 'keycode 112=NoSymbol'
        ;;
    "off")
        xmodmap -e 'keycode 112=Page_Up'
        ;;
    *)
        echo "Must pass either 'on' or 'off'"
        exit -1
        ;;
esac
