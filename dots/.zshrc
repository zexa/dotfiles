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
#source $HOME/.cargo/env

# Python
export PATH="$HOME/.poetry/bin:$PATH"
source $HOME/.poetry/env
#export PATH="/home/augustinas/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# PHP
export PATH="$HOME/.symfony/bin:$PATH"

# Aesthetics
(cat ~/.cache/wal/sequences &)

# Kubernetes
function ka() {
  kubectl get all -n $1
}

function kl() {
  kubectl logs $1 -n $2
}

