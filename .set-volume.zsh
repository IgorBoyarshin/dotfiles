#!/usr/bin/zsh


get_volume() {
    volume_level=$(pactl list sinks | grep "Volume: front-left:" | awk '{print $5}' | sed 's/%//' | tr '\n' ' ' | awk '{print $(NF)}')
    volume_muted=$(pactl list sinks | grep "Mute: " | awk '{print $2}' | tr '\n' ' ' | awk '{print $(NF)}')

    colored_volume_status=0
    if [[ "$volume_muted" == "no" ]]; then
        colored_volume_status="<fc=#22ee22>[on]</fc>"
    elif [[ "$volume_muted" == "yes" ]]; then
        colored_volume_status="<fc=#ee2222>[OFF]</fc>"
    else
        colored_volume_status=0
    fi

    echo $volume_level% $colored_volume_status | tee /tmp/.volume-pipe
}


case $1 in
  "")
    ;;
  "up")
    pactl set-sink-volume @DEFAULT_SINK@ +4%
    ;;
  "down")
    pactl set-sink-volume @DEFAULT_SINK@ -4%
    ;;
  "toggle")
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    ;;
  *)
    echo "unknown command"
    exit 1
    ;;
esac


get_volume

