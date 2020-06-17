#!/usr/bin/zsh

name_1=$(sed -n 1p ~/scripts/variables/preferred_source_name_contains)
name_2=$(sed -n 2p ~/scripts/variables/preferred_source_name_contains)
# Try the first preferred name, then the second, and finally select 0 if everything failed
{ { pamixer --list-sources | grep -v "Monitor" | grep $name_1; } || { pamixer --list-sources | grep -v "Monitor" | grep $name_2; } || echo "0" } | awk '{ print $1 }'