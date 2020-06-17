#!/usr/bin/zsh

name_1=$(sed -n 1p ~/scripts/variables/preferred_sink_name_contains)
# Choose 0 as default sink number if the specified name could not be found
{ { pamixer --list-sinks | grep $name_1; } || echo "0" } | awk '{ print $1 }'
