#!/usr/bin/zsh

# The line numbering should be synced with distribute.zsh to keep things easily maintainable
# .zshrc .vimrc .tmux.conf are sourced from this dir, don't copy them!!
# Also need to edit the crontab manually with crontab.txt




rsync -ah ~/.dircolors ./
rsync -ah ~/.screenshot-capture.zsh ./
rsync -ah ~/.screenshot-delay-3.zsh ./
rsync -ah ~/.screenshot.zsh ./
rsync -ah ~/.set-volume.zsh ./
rsync -ah ~/.set_brightness.zsh ./
rsync -ah ~/.xinitrc ./
rsync -ah ~/.Xresources ./
rsync -ah ~/.xserverrc ./
rsync -ah ~/.zprofile ./

mkdir -p .vim
rsync -ah ~/.vim/autoload ./.vim/
rsync -ah ~/.vim/snippets ./.vim/

mkdir -p .ncmpcpp
rsync -ah ~/.ncmpcpp/bindings ./.ncmpcpp/
rsync -ah ~/.ncmpcpp/config ./.ncmpcpp/

mkdir -p .xmonad
rsync -ah ~/.xmonad/build.rm_ext .xmonad/
rsync -ah ~/.xmonad/build .xmonad/
rsync -ah ~/.xmonad/stack.yaml .xmonad/
rsync -ah ~/.xmonad/.xmobarrc .xmonad/
rsync -ah ~/.xmonad/xmonad.hs .xmonad/

mkdir -p .config
rsync -ah ~/.config/mimeapps.list .config/

mkdir -p .config/ranger
rsync -ah ~/.config/ranger/rc.conf .config/ranger/
rsync -ah ~/.config/ranger/rifle.conf .config/ranger/
rsync -ah ~/.config/ranger/scope.sh .config/ranger/
mkdir -p .config/ranger/colorschemes
rsync -ah ~/.config/ranger/colorschemes/my_ranger_colorscheme.py .config/ranger/colorschemes/my_ranger_colorscheme.py

mkdir -p .config/nvim
rsync -ah ~/.config/nvim/init.vim .config/nvim/

mkdir -p .config/mpd
rsync -ah ~/.config/mpd/mpd.conf .config/mpd/

mkdir -p .config/mpv
rsync -ah ~/.config/mpv/input.conf .config/mpv/
rsync -ah ~/.config/mpv/mpv.conf .config/mpv/
mkdir -p .config/mpv/lua-settings
rsync -ah ~/.config/mpv/lua-settings/osc.conf .config/mpv/lua-settings/

mkdir -p .newsboat
rsync -ah ~/.newsboat/config .newsboat/config
rsync -ah ~/.newsboat/urls .newsboat/urls

rsync -ah ~/.fehbg .fehbg


