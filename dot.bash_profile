source ~/.bashrc
source ~/.profile

# # silliness for SSK
# if [ -s ~/Sites/shasta/config/env_vars.sh ] ; then source ~/Sites/shasta/config/env_vars.sh ; fi

###begin-jump-bash_profile
#
# Installation:
#
# jump >> ~/.bash_profile && source ~/.bash_profile
#

function jump {
  local si="$IFS";
  IFS=$'\n';
  local newDir=$(JUMPPROFILE=1 command jump "$@");
  cd "$newDir";
  IFS="$si";
}
alias jj="jump -a"

###end-jump-bash_profile

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
