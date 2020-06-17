#!/usr/bin/zsh

pamixer --list-sinks | awk '{ $1=$2=""; print $0 }' | sed -e '1d' -e 's/^[ \t]*//' -e 's/\"//g'
