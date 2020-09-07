# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# System variables
export PS1='\[\e[1m\]\$\[\e[0m\] '
export BROWSER=/usr/bin/firefox
export VISUAL=nvim
export EDITOR=nvim
export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5
if [[ $LANG = '' ]]; then
  export LANG=en_US.UTF-8
fi

# Bash completion
if [[ -e /etc/share/bash-completion/bash-completion ]]; then
  source /etc/share/bash-completion/bash-completion
fi

# Path variables
function atp() { export PATH=$PATH:$1; }
atp ${HOME}/.npm-global/bin
atp ${HOME}/.local/bin

# SSH variables
if [ $SSH_TTY ]; then export PS1="(ssh) \[\e[1m\]\$\]\e[0m\] "; fi

source $HOME/.bashrc.aliases

