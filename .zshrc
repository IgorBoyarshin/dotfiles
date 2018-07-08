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
alias notes='cd ~/Stuff/notes'
alias audio='cd ~/Storage/Audio/Main'
alias ger1='djvu ~/Storage/Studying/German/GER_Kamyanova_Praktichesky_kurs_nemetskogo_yazyka.djvu'
alias ger2='djvu ~/Storage/Studying/German/GER_20-\ Практический\ курс\ немецкого\ языка_Завьялова\ Ильина_2005\ 6-е\ изд\ \(with\ Audio\).djvu'
alias sem6='cd ~/Storage/Studying/Semester\ 6'
# alias ppcs='cd ~/Storage/Studying/Semester\ 6/Programming\ for\ Parallel\ Computer\ Systems/Labs'

# Programs
alias vim='nvim'
alias svim='sudo -E nvim'
alias evernote='nixnote2'
alias djvu='djview'
alias pdf='evince'
alias img='nomacs'
alias word='libreoffice --writer'
alias excel='libreoffice --calc'
alias draw='libreoffice --draw'
alias rr='ranger'

# Usual
alias instp='sudo pacman -S'
alias instt='trizen -S --noconfirm'
alias rmp='sudo pacman -Rns'
alias rmt='trizen -Rns'
alias updp='sudo pacman -Syu'
alias updt='trizen -Syu --noconfirm'
alias rmvp='sudo pacman -Rns'
alias rmvt='trizen -Rns'
alias info='vim ~/Stuff/notes/info.txt'
alias inst='vim ~/Stuff/notes/packages.txt'
alias vimrc='vim ~/dotfiles/.vimrc'
alias zshrc='vim ~/dotfiles/.zshrc'
alias lsr='ls -alrth'
alias c='clear'
# Reload shell config on the fly
alias src='source ~/.zshrc'

alias cpcpp='cp ~/Stuff/notes/coding/cpp_run.zsh.example run.zsh; cp ~/Stuff/notes/coding/Makefile.example Makefile'

export TERM="rxvt-256color"

export XDG_CONFIG_HOME="~/.config"

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
# export TERMINAL='vim'


# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Powerlevel9k settings (must go before the theme setting)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print $'\uE0B1') %F{black}"
# POWERLEVEL9K_USER_ICON=''
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="%F{black} $(print $'\uE0B1') %F{black}"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='cyan'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)

ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"
# ZSH_THEME="igorek-theme"


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
HIST_STAMPS="dd/mm/yyyy"

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
