#!/usr/bin/zsh

name_1=$(sed -n 1p ~/scripts/variables/preferred_source_name_contains)
name_2=$(sed -n 2p ~/scripts/variables/preferred_source_name_contains)
name_3=$(sed -n 3p ~/scripts/variables/preferred_source_name_contains)
name_4=$(sed -n 4p ~/scripts/variables/preferred_source_name_contains)
# Try the first preferred name, then the second, and finally select 0 if everything failed
{ { pamixer --list-sources | grep -v "Monitor" | grep $name_1; } || { pamixer --list-sources | grep -v "Monitor" | grep $name_2; } || { pamixer --list-sources | grep -v "Monitor" | grep $name_3; } || { pamixer --list-sources | grep -v "Monitor" | grep $name_4; } || echo "0" } | head -1 | awk '{ print $1 }'
