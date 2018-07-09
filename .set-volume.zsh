#!/usr/bin/zsh

get_volume() {
    # input=$(amixer sget Master)
    # volume=$(${input} | grep -o -m 1 "[[:digit:]]*% | tr -d '%'")
    # status=$(${input} | grep -o -m 1 "\[(on|off)\]")

    if [[ $(amixer sget Master) = "" ]]; then
        echo "11"
        volume_level=$(amixer sget Speaker | grep -o -m 1 "[[:digit:]]*%")
        volume_status=$(amixer sget Speaker | grep -E -o -m 1 "\[(on|off)\]")
    else
        echo "22"
        volume_level=$(amixer sget Master | grep -o -m 1 "[[:digit:]]*%")
        volume_status=$(amixer sget Master | grep -E -o -m 1 "\[(on|off)\]")
    fi

    colored_volume_status=0
    if [[ "$volume_status" == "[on]" ]]; then
        colored_volume_status="<fc=#22ee22>$volume_status</fc>"
    elif [[ "$volume_status" == "[off]" ]]; then
        colored_volume_status="<fc=#ee2222>$volume_status</fc>"
    else
        colored_volume_status=0
    fi

    echo $volume_level $colored_volume_status | tee /tmp/.volume-pipe

  # return volume levels (0-100)
  # vol=$(amixer sget Master | grep -o -m 1 '[[:digit:]]*%' | tr -d '%')
  # what to output to the pipe:
  # echo ${vol}% + "<fc=#ff0000>cat</fc>" | tee /tmp/.volume-pipe
}


if [[ $(amixer sget Master) = "" ]]; then
    echo "11"
    case $1 in
      "")
        ;;
      "up")
        amixer set Speaker 5+ >/dev/null
        ;;
      "down")
        amixer set Speaker 5- > /dev/null
        ;;
      "toggle")
        amixer set Speaker "toggle" >/dev/null
        ;;
      *)
        echo "unknown command"
        exit 1
        ;;
    esac
else
    echo "22"
    case $1 in
      "")
        ;;
      "up")
        amixer set Master 5+ >/dev/null
        ;;
      "down")
        amixer set Master 5- > /dev/null
        ;;
      "toggle")
        amixer set Master "toggle" >/dev/null
        ;;
      *)
        echo "unknown command"
        exit 1
        ;;
    esac
fi

get_volume
