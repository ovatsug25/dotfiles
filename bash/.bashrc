export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/my_bin:$PATH"
# export PATH="~/kinect/OpenNI-MacOSX-x64-2.2/Include/:$PATH"
# export OPENNI2_INCLUDE=/usr/local/include/ni2
# export OPENNI2_REDIST=/usr/local/lib/ni2

eval "$(rbenv init -)"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$'

# set -o vi
