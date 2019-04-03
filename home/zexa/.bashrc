#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $HOME/.bashrc.aliases

PS1='[\u@\h \W]\$ '

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nvim

projP=/home/zexa/Projects/PERSONAL

function atp() { PATH=$PATH:$1; }
atp ${HOME}/.npm-global/bin
atp ${HOME}/.local/bin

function atp() { PATH=$PATH:$1; echo $PATH; }

