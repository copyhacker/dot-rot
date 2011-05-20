# For memcached
EVENT_NOKQUEUE=yes

export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR="/usr/local/bin/emacsclient"

export DISPLAY=:0.0

alias ll='ls -lasth'
# alias ksss="ps ax | grep spec | grep -v grep | awk '{print \$1}' | sudo xargs kill -9"
alias see='qlmanage -p "$@" >& /dev/null'

# Git aliases for bash
alias gst='git status'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gk='gitk --all > /dev/null 2>&1 &'
alias gl='git log --pretty=oneline --abbrev-commit' # list commits
alias glg='git log --pretty=oneline | grep' # search commits

# Memcached
alias mcd='memcached -d -m 24 -p 11211'

# Node libraries
export NODE_PATH=/usr/local/lib/node

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

# ImageMagick kludge
export MAGICK_HOME="/usr/local/ImageMagick-6.5.5"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"

[[ $- == *i* ]]   &&   . ~/code/git-prompt/git-prompt.sh
