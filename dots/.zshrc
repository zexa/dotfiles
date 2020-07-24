# ZSH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="robbyrussell"
export plugins=(git)
source $ZSH/oh-my-zsh.sh

# EDITOR
export EDITOR=nvim

# NPM
export NPM_PACKAGES="$HOME/.npm"
export PATH=$PATH:/$NPM_PACKAGES/bin

# Rust
source $HOME/.cargo/env

# Python
source $HOME/.poetry/env
export PATH="/home/augustinas/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

