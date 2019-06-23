# Git
alias gits='git status -u'
alias gitp='git push'
alias gita='git add -A'
alias gitc='git commit'

# Copying
alias cp='rsync -avh'
alias cppr='rsync -avh --progress'
alias scp='sudo rsync -avh'
alias scppr='sudo rsync -avh --progress'

# Mounting
# Regular
alias mnt='sudo mount -o uid=igorek,gid=users,fmask=111,dmask=000 /dev/sdb1 /mnt/External'
alias umnt='sudo umount /dev/sdb1'
#  && sudo chown igorek /mnt/External
# Custom
alias mntc='sudo mount -o uid=igorek,gid=users,fmask=111,dmask=000'
alias umntc='sudo umount'

# Places
alias notes='cd ~/Stuff/Notes'
alias notesvim='vim ~/Stuff/Notes/vim.txt'
alias notesgit='vim ~/Stuff/Notes/git.txt'
alias notescppc='vim ~/Stuff/Notes/coding/cpp_code.cpp'
alias notescppi='vim ~/Stuff/Notes/coding/cpp_info.txt'
# alias audio='cd ~/Storage/Audio/Main'
# alias ger1='djvu ~/Storage/Studying/German/GER_Kamyanova_Praktichesky_kurs_nemetskogo_yazyka.djvu'
# alias ger2='djvu ~/Storage/Studying/German/GER_20-\ Практический\ курс\ немецкого\ языка_Завьялова\ Ильина_2005\ 6-е\ изд\ \(with\ Audio\).djvu'
alias sem8='cd ~/Storage/Studying/Semester\ 8'
alias stuff='cd ~/Stuff'
alias down='cd ~/Downloads'
alias cdcpp='cd ~/Stuff/dev/Cpp'
alias cdjs='cd ~/Stuff/dev/Javascript'
# alias ppcs='cd ~/Storage/Studying/Semester\ 6/Programming\ for\ Parallel\ Computer\ Systems/Labs'

# Programs
alias vim='nvim'
alias svim='sudo -E nvim'
alias djvu='djview'
alias pdf='zathura'
alias imgfull='nomacs'
alias img='rifle_sxiv'
alias word='libreoffice --writer'
alias excel='libreoffice --calc'
alias draw='libreoffice --draw'
alias rr='ranger'
alias vv='ESCDELAY=25 vffm'
alias wea='curl wttr.in/kiev'
alias sdocker='sudo docker'
alias redr='redshift -x'
alias redn='redshift -P -O 2500'
alias rede='redshift -P -O 3000'

# Usual
alias instp='sudo pacman -S'
alias instt='trizen -S --noconfirm'
alias rmp='sudo pacman -Rns'
alias rmt='trizen -Rns'
alias updp='sudo pacman -Syu'
alias updt='trizen -Syu --noconfirm'
alias rmvp='sudo pacman -Rns'
alias rmvt='trizen -Rns'
alias info='vim ~/Stuff/Notes/info.txt'
alias inst='vim ~/Stuff/Notes/packages.txt'
alias vimrc='vim ~/dotfiles/.vimrc'
alias zshrc='vim ~/dotfiles/.zshrc'
alias lsr='ls -alrth'
alias c='clear'
alias mkwifi='sudo create_ap wlp60s0 wlp60s0 Igorek password'
alias cshut='umnt /mnt/Storage || umnt /mnt/Mutual || shutdown now'
alias cboot='umnt /mnt/Storage || umnt /mnt/Mutual || reboot'
# Reload shell config on the fly
alias src='source ~/.zshrc'
alias run='./run.zsh'
alias crun='cargo run'
alias ck='cargo check'
alias record='ffmpeg -f pulse -ac 2 -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor -filter_complex amix=inputs=1 -f x11grab -r 30 -s 1920x1080 -i :0.0+0,0 -vcodec libx264 -preset veryfast -crf 18 -acodec libmp3lame -q:a 1'
alias record1366='ffmpeg -f pulse -ac 2 -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor -filter_complex amix=inputs=1 -f x11grab -r 30 -s 1920x1080 -i :0.0+0,0 -vf scale=1366:768 -vcodec libx264 -preset veryfast -crf 18 -acodec libmp3lame -q:a 1'

alias cpcpp='cp ~/Stuff/Notes/coding/cpp_run.zsh.example run.zsh; cp ~/Stuff/Notes/coding/Makefile.example Makefile'

# Rust. Racer
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export PATH=$PATH:/home/igorek/.cargo/bin

# Otherwise zsh complains
export TERM="rxvt-256color"

# If ypu uncomment this, apps will create ~/~ and store their configs there
# export XDG_CONFIG_HOME="~/.config"

# Path to your oh-my-zsh installation.
export ZSH=/home/igorek/.oh-my-zsh

# For MPD
export MPD_HOST=$HOME/.config/mpd/socket

# For Haskell
#export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:/home/igorek/.local/bin

# For ranger. Not to load the default config file
export RANGER_LOAD_DEFAULT_RC=FALSE

# Possible fix for fontconfig issue
export FONTCONFIG_PATH=/etc/fonts

export EDITOR='vim'


# Powerlevel9k settings (must go before the theme setting)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print $'\uE0B1') %F{black}"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="$(print $'\uE0B0')"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='232'
POWERLEVEL9K_CONTEXT_TEMPLATE="%K{232}%F{226}%n"
# POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="%F{black}~%F{black}"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_DIR_HOME_FOREGROUND='blue'
POWERLEVEL9K_DIR_HOME_BACKGROUND='cyan'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='blue'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
# POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
# POWERLEVEL9K_USER_ICON=''
# POWERLEVEL9K_USER_DEFAULT_FOREGROUND='yellow'
# POWERLEVEL9K_USER_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='grey'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)

ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"


# Zsh-autosuggestions settings
ZSH_AUTOSUGGEST_USE_ASYNC=true
bindkey '^ ' forward-word


# Colored man pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode


# fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'


# How long to wait for additional chars in sequence
KEYTIMEOUT=1

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git zsh-syntax-highlighting zsh-autosuggestions
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Colors stuff
# alias ls='ls --color'
# LS_COLORS='di=1;32:ln=1;96:'
# export LS_COLORS

eval "$(dircolors ~/.dircolors)";
