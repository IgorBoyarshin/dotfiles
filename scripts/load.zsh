#!/usr/bin/zsh

url=$1

cd ~/Downloads/NewMusic
echo '=================== DOWNLOADING ===================='
name=$(youtube-dl -f 'bestaudio' --no-playlist -o '%(title)s.%(ext)s' $url | tee /dev/tty | grep "Destination" | awk -F ': ' '{print $2}')
newname=$(echo $name | sed 's/webm/mp3/' | sed 's/m4a/mp3/')
echo '=================== CONVERTING ===================='
ffmpeg -i $name $newname
rm -f $name
echo '=================== DONE ===================='
