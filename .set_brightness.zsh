#!/usr/bin/zsh


FILE_MAX_BRIGHTNESS="/sys/class/backlight/intel_backlight/max_brightness"
# Read-only brightness, is set automatically on changes in <brightness>
FILE_ACTUAL_BRIGHTNESS="/sys/class/backlight/intel_backlight/actual_brightness"
# Brightness to be set by user
FILE_BRIGHTNESS="/sys/class/backlight/intel_backlight/brightness"
FILE_SAVED_BRIGHTNESS="/tmp/.saved_brightness"
STEP=50

read -r max_brightness < $FILE_MAX_BRIGHTNESS
read -r current_brightness < $FILE_ACTUAL_BRIGHTNESS


case $1 in
    "up")
        new_brightness=$(( $current_brightness + $STEP ))
        if [ $new_brightness -le $max_brightness ]; then
            echo $new_brightness > $FILE_BRIGHTNESS
        fi
        ;;
    "down")
        new_brightness=$(( $current_brightness - $STEP ))
        if [ $new_brightness -gt 0 ]; then
            echo $new_brightness > $FILE_BRIGHTNESS
        fi
        ;;
    "toggle")
        [ -f $FILE_SAVED_BRIGHTNESS ] || echo 0 > $FILE_SAVED_BRIGHTNESS
        read -r saved_brightness < $FILE_SAVED_BRIGHTNESS
        if [ $saved_brightness -eq 0 ]; then
            echo $current_brightness > $FILE_SAVED_BRIGHTNESS
            echo 0 > $FILE_BRIGHTNESS
        else
            echo $saved_brightness > $FILE_BRIGHTNESS
            echo 0 > $FILE_SAVED_BRIGHTNESS
        fi
        ;;
    *)
        echo ":> .set_brightness.zsh: unknown command."
        exit 1
        ;;
esac
