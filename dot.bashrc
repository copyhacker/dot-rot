export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH

# export EDITOR="/usr/local/bin/emacsclient"
# export EDITOR="/usr/local/bin/mate -w"
# export EDITOR='subl -w'
export EDITOR="/usr/bin/vim"
# export EDITOR="/usr/local/bin/mvim"
# export EDITOR="atom -w"

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
alias girp='git rev-parse HEAD'

alias be='bundle exec'
alias b='bundle exec'

alias z='zeus'
alias git='~/bin/hub'
alias vi='vim'

alias sqlstart='launchctl uload ~/Library/LaunchAgents/com.mysql.mysqld.plist'
alias sqlstop='launchctl unload ~/Library/LaunchAgents/com.mysql.mysqld.plist'

alias pg='postgres -D /usr/local/var/postgres'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

# Watson
alias w='RBENV_VERSION=2.0.0-p451 watson'

# Spork
alias td="testdrb -I test"
alias tdall="testdrb -I test ./test/**/*_test.rb"

# Shortcuts
alias ks='cd ~/Sites/kickserv'
alias sc='cd ~/Sites/scrumcious'
alias ab='cd ~/Sites/assetbox'
alias hhr='cd ~/Sites/HuddleHR'

# Node libraries
export NODE_PATH=/usr/local/lib/node

# rvm is dead, long live rbenv
# if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -s ~/.git-prompt.sh ] ; then [[ $- == *i* ]]   &&   . ~/.git-prompt.sh ; fi

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
