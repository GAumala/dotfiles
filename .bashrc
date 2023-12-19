#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Tilix VTE config
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# Stack bins
export PATH=$PATH:/home/gabriel/.local/bin

# The ONLY text editor
export EDITOR=vim;

# Gopath
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"
#
# add NPM binaries path
NPM_PACKAGES=~/.npm-packages
export PATH="$PATH:$NPM_PACKAGES/bin"

# add NPM man pages
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
