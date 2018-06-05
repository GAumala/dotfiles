#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# The ONLY text editor
export EDITOR=vim;

# Tilix VTE config
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Stack bins
export PATH=$PATH:/home/gabriel/.local/bin
# Gopath
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

