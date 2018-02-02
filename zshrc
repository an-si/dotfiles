export GOPATH=$HOME/src/go
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$GOPATH/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export WORKON_HOME=$HOME/.virtualenvs
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

source /usr/local/share/antigen/antigen.zsh

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
antigen bundle yarn
antigen bundle fabric
antigen bundle z
antigen bundle golang
antigen bundle docker
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions
antigen bundle supercrabtree/k
antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle virtualenvwrapper

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
antigen apply

SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false

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

# custom aliases
alias clean="echo 'Removing .pyc files...' && find .  -name '*.pyc' -exec rm {} \; -exec echo -n . \; && echo ''"
alias mm="cd ~/src/momox/src/"
alias mmx="cd ~/src/mmx/src/"
alias mxw='cd ~/src/mx-webapp/ && export PATH="$PATH:./node_modules/.bin" && nvm use'
alias vi='vim'
alias tigs='tig status'


# enable openshift oc autocompletion
# source <(oc completion zsh)

