source /usr/local/share/antigen/antigen.zsh

alias dircolors="gdircolors"

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export WORKON_HOME=$HOME/.virtualenvs
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#export NVM_DIR="/Users/ansi/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# only for agnoster theme
DEFAULT_USER='ansi'

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle git
antigen bundle git-flow
antigen bundle django
antigen bundle sublime
antigen bundle brew
antigen bundle pip
antigen bundle python
antigen bundle vi-mode
antigen bundle node
antigen bundle nvm
antigen bundle virtualenvwrapper
antigen bundle fabric
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle joel-porquet/zsh-dircolors-solarized.git
antigen bundle rimraf/k
antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion
antigen apply

# Load the theme.
#antigen theme agnoster
antigen theme bureau

# package settings
setupsolarized dircolors.ansi-dark

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# dircolor settings
export LS_OPTIONS='--color=auto'
export LS='gls'

# Disable hostname completion
zstyle ':completion:*' hosts off
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# List direcory contents
alias ls='$LS $LS_OPTIONS'
alias lsa='$LS $LS_OPTIONS -lah'
alias l='$LS $LS_OPTIONS -la'
alias ll='$LS $LS_OPTIONS -l'
alias la='$LS $LS_OPTIONS -lA'
alias sl=ls # often screw this up

# custom aliases
alias clean="echo 'Removing .pyc files...' && find .  -name '*.pyc' -exec rm {} \; -exec echo -n . \; && echo ''"
alias mm="cd ~/src/momox/src/"
alias mmx="cd ~/src/mmx/src/"
alias mxw='cd ~/src/mx-webapp/ && export PATH="$PATH:./node_modules/.bin" && nvm use'

