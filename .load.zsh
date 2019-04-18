#!/usr/bin/zsh

url=$1

cd ~/Downloads/NewMusic
name=$(youtube-dl -f 'bestaudio' --no-playlist -o '%(title)s.%(ext)s' $url | tee /dev/tty | grep "Destination" | awk -F ': ' '{print $2}')
newname=$(echo $name | sed 's/webm/mp3/')
ffmpeg -i $name $newname
rm -f $name
