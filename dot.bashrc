export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH

# export EDITOR="/usr/local/bin/emacsclient"
# export EDITOR="/usr/bin/mate -w"
export EDITOR="/usr/bin/vim"
# export EDITOR="/usr/local/bin/mvim"

export DISPLAY=:0.0

alias ll='ls -lasth'
alias see='qlmanage -p "$@" >& /dev/null'

# Git aliases for bash
alias gst='git status'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -v -a -m'
alias gb='git branch'
alias gba='git branch -a'
alias gk='gitk --all > /dev/null 2>&1 &'
alias gl='git log --pretty=oneline --abbrev-commit' # list commits
alias glg='git log --pretty=oneline | grep' # search commits

alias be='bundle exec'
alias b='bundle exec'

alias git='~/bin/hub'
alias vi='vim'

alias sqlstart='launchctl uload ~/Library/LaunchAgents/com.mysql.mysqld.plist'
alias sqlstop='launchctl unload ~/Library/LaunchAgents/com.mysql.mysqld.plist'

alias pg='postgres -D /usr/local/var/postgres'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

# Shortcuts
alias ks='cd ~/Sites/kickserv'
alias ssk='cd ~/Sites/shasta'
alias wm='cd ~/Sites/whisper.me'
alias hy='cd ~/Sites/hypte'
alias hf='cd ~/Sites/hirefuse'

# Node libraries
export NODE_PATH=/usr/local/lib/node

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

if [ -s ~/.git-prompt.sh ] ; then [[ $- == *i* ]]   &&   . ~/.git-prompt.sh ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
