#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='\e\033[01;32m\]\W > \e[m'
PS1='\[\033[1;32m\] \W > \[\033[00m\]'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PATH=$PATH:$HOME/.local/bin/
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

export PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$HOME/go/bin

PATH=$PATH:$HOME/hyperledger/bin

export HISTCONTROL=ignoredups
export HISTSIZE=-1
export HISTFILESIZE=-1

export PATH="$PATH:/opt/nvim-linux64/bin"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export VCPKG_ROOT=$HOME/repo/vcpkg
export PATH=$VCPKG_ROOT:$PATH

alias vim="nvim"
alias la="ls -la"

export EDITOR='nvim'
tmux new -A
set -o vi
