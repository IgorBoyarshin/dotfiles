#!/usr/bin/zsh

rsync -ah ~/.dircolors .dircolors
rsync -ah ~/.screenshot-capture.zsh .screenshot-capture.zsh
rsync -ah ~/.screenshot-delay-3.zsh .screenshot-delay-3.zsh
rsync -ah ~/.screenshot.zsh .screenshot.zsh
rsync -ah ~/.set-volume.zsh .set-volume.zsh
# mkdir ./.vim
# mkdir ./.vim/snippets
rsync -ah ~/.vim ./
