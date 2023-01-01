#!/usr/bin/zsh

# NOTE Better use (https://wiki.archlinux.org/title/map_scancodes_to_keycodes)
# OR just do :> sudo setkeycodes c9 0 [does not persist after reboot]
#
# :> instp evtest
# To list devices:
# :> sudo evtest
# To find out the keycode:
# :> sudo evtest /dev/input/event4 | grep PAGE
#
# Useful utility to track keypresses
# xev -event keyboard

case $1 in
    "on")
        # xmodmap -e 'keycode 112=NoSymbol'
        xmodmap -e 'keycode 104=NoSymbol NoSymbol NoSymbol NoSymbol NoSymbol NoSymbol'
        ;;
    "off")
        # xmodmap -e 'keycode 112=Page_Up'
        xmodmap -e 'keycode 104=Page_Up'
        ;;
    *)
        echo "Must pass either 'on' or 'off'"
        exit -1
        ;;
esac
