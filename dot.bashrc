# Displays current git branch in prompt.
# From http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/

# function parse_git_branch {
#   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }

# function proml {
#   local        BLUE="\[\033[0;34m\]"
#   local         RED="\[\033[0;31m\]"
#   local   LIGHT_RED="\[\033[1;31m\]"
#   local       GREEN="\[\033[0;32m\]"
#   local LIGHT_GREEN="\[\033[1;32m\]"
#   local       WHITE="\[\033[1;37m\]"
#   local  LIGHT_GRAY="\[\033[0;37m\]"
#   case $TERM in
#     xterm*)
#     TITLEBAR='\[\033]0;\u@\h:\w\007\]'
#     ;;
#     *)
#     TITLEBAR=""
#     ;;
#   esac

# echo date
# $LIGHT_GRAY[$GREEN\$(date +%H:%M)$LIGHT_GRAY]\

# PS1="${TITLEBAR}\
# $LIGHT_GRAY[$GREEN\u@\h:\w$RED\$(parse_git_branch)$LIGHT_GRAY]\
# $GREEN\$ "
# PS2='> '
# PS4='+ '
# }
# proml

# For memcached
EVENT_NOKQUEUE=yes

export PATH=/usr/games:/opt/local/bin:/opt/local/apache2/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH
# export EDITOR="/usr/local/bin/mate -w"
export EDITOR="/usr/local/bin/emacsclient"

export DISPLAY=:0.0

# alias c='script/console'
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
# alias svc='svn commit -F commit.log'
alias ll='ls -lasth'
alias sss='script/spec_server > /dev/null 2>&1 &'
alias ksss="ps ax | grep spec | grep -v grep | awk '{print \$1}' | sudo xargs kill -9"
# alias uni="unicorn_rails -p 3000"
# alias woof="mongrel_rails start -d"
# alias foow="mongrel_rails stop"
# alias commit="svn ci -F log/commit.txt"
alias see='qlmanage -p "$@" >& /dev/null'
# alias solr="PORT=8984 rake solr:start > /dev/null 2>&1 &"
# alias tunnlr="rake tunnlr:start > /dev/null 2>&1 &"

# alias geez="cd ~/Sites/geezeo"

alias stage="DEPLOY_TO=staging cap deploy"
alias stage_migrate="DEPLOY_TO=staging cap deploy:migrate"
alias stage_restart="DEPLOY_TO=staging cap deploy:restart"

# Git aliases for bash
# Put in ~/.bash_profile

alias gst='git status'
# alias gl='git pull'
# alias gp='git push'
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
