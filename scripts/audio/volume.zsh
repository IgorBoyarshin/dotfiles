#!/usr/bin/zsh


read -r selected_source_input < ~/scripts/variables/selected_input_source_number
read -r selected_sink_output < ~/scripts/variables/selected_output_sink_number
# selected_sink_output=$(~/scripts/get_preferred_sink_number.zsh)

case $1 in
    "")
        ;;
    "up")
        pamixer --sink $selected_sink_output --increase 4 --allow-boost
        ;;
    "down")
        pamixer --sink $selected_sink_output --decrease 4 --allow-boost
        ;;
    "toggle")
        pamixer --sink $selected_sink_output --toggle-mute
        ;;
    *)
        echo "unknown command"
        exit 1
        ;;
esac

# is_muted=$(pamixer --sink $selected_sink_output --get-mute)
volume_level=$(pamixer --sink $selected_sink_output --get-volume-human)

# echo $volume_level | tee /tmp/.volume-pipe
echo $volume_level > ~/scripts/variables/volume
# Add 34 to the signal number
kill -44 $(pidof dwmblocks)
