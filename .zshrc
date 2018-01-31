# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Aliases

alias vim='nvim'
alias svim='sudo -E nvim'

# Git
alias gits='git status -u'
alias gitp='git push'
alias gita='git add -A'
alias gitc='git commit'

# Copying
alias cp='rsync -avh'
alias cppr='rsync -avh --progress'

# Mounting
# Regular
alias mnt='sudo mount -o uid=igorek,gid=users,fmask=111,dmask=000 /dev/sdb1 /mnt/External'
alias umnt='sudo umount /dev/sdb1'
#  && sudo chown igorek /mnt/External
# Custom
alias mntc='sudo mount -o uid=igorek,gid=users,fmask=111,dmask=000'
alias umntc='sudo umount'


# Usual
alias info='vim ~/Stuff/notes/info.txt'
alias inst='vim ~/Stuff/notes/install.txt'
alias notes='cd ~/Stuff/notes'
alias lsr='ls -alrth'
alias vimrc='vim ~/dotfiles/.vimrc'
alias zshrc='vim ~/dotfiles/.zshrc'


# Path to your oh-my-zsh installation.
export ZSH=/home/igorek/.oh-my-zsh


# For MPD
export MPD_HOST=$HOME/.config/mpd/socket

# For Haskell
export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:/home/igorek/.local/bin

# For ranger. Not to load the default config file
export RANGER_LOAD_DEFAULT_RC=FALSE


# Does not work!!?
# export RANGER_LOAD_DEFAULT_RC=FALSE

export EDITOR='vim'

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME="igorek-theme"

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
    git
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
