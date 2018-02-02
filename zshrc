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
antigen init .antigenrc

# custom aliases
alias clean="echo 'Removing .pyc files...' && find .  -name '*.pyc' -exec rm {} \; -exec echo -n . \; && echo ''"
alias mm="cd ~/src/momox/src/"
alias mmx="cd ~/src/mmx/src/"
alias mxw='cd ~/src/mx-webapp/ && export PATH="$PATH:./node_modules/.bin" && nvm use'
alias vi='vim'
alias tigs='tig status'
