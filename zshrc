# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# only for agnoster theme
DEFAULT_USER='ansi'

# Example aliases
alias zshconfig="vi ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow django gnu-utils sublime brew pip python vi-mode virtualenvwrapper zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# prevent reloading of the history in each shell
unsetopt share_history

# show cpu usage stats for programs running for more than 10 seconds
REPORTTIME=10

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# my settings
alias clean="echo 'Removing .pyc files...' && find .  -name '*.pyc' -exec rm {} \; -exec echo -n . \; && echo ''"
alias mm="cd ~/src/momox/src/momox/"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python2.6"
source /usr/local/bin/virtualenvwrapper.sh
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

# solarized dircolors
export LS_OPTIONS='--color=auto'
eval $(gdircolors ~/.dircolors)

# Disable hostname completion
zstyle ':completion:*' hosts off
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# List direcory contents
alias ls='gls $LS_OPTIONS'
alias lsa='gls $LS_OPTIONS -lah'
alias l='gls $LS_OPTIONS -la'
alias ll='gls $LS_OPTIONS -l'
alias la='gls $LS_OPTIONS -lA'
alias sl=ls # often screw this up

# git alias
alias gco='git checkout'
alias greb='git rebase'

