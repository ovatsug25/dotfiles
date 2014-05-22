export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/my_bin:$PATH"
eval "$(rbenv init -)"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


alias cdd="cd ~/Desktop/Dropbox/"
alias preview="open /Applications/Preview.app"
alias safari="open /Applications/Safari.app"
alias chrome="open /Applications/Chrome.app"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# http://vvv.tobiassjosten.net/git/add-current-git-branch-to-your-bash-prompt/
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  c_reset=`tput sgr0`
  c_user=`tput setaf 2; tput bold`
  c_path=`tput setaf 4; tput bold`
  c_git_clean=`tput setaf 2`
  c_git_dirty=`tput setaf 1`
else
  c_reset=
  c_user=
  c_path=
  c_git_cleanclean=
  c_git_dirty=
fi

git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi

  git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')

  if git diff --quiet 2>/dev/null >&2; then
    git_color="${c_git_clean}"
  else
    git_color=${c_git_cleanit_dirty}
  fi

  echo " [$git_color$git_branch${c_reset}]"
}

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h $(git_prompt) \[\e[35m\]\w\[\e[0m\]\n\$ '

# set -o vi

# Added by Canopy installer on 2013-09-30
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
# VIRTUAL_ENV_DISABLE_PROMPT=1 source /Users/ovatsug25/Library/Enthought/Canopy_64bit/User/bin/activate
export PATH="$HOME/.rbenv/bin:$PATH"
