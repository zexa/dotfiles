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
if [[ -z $HOME/.cargo ]]; then
  source $HOME/.cargo/env
fi

# Python
if [[ -z $HOME/.poetry ]]; then
  export PATH="$HOME/.poetry/bin:$PATH"
  source $HOME/.poetry/env
fi
#if [[ -z $HOME/.pyenv ]]; then
#  export PATH="/home/augustinas/.pyenv/bin:$PATH"
#  eval "$(pyenv init -)"
#  eval "$(pyenv virtualenv-init -)"
#fi

# Aesthetics
if [[ -z $HOME/.cache/wal ]]; then 
  (cat ~/.cache/wal/sequences &)
fi

# Kubernetes
alias dco=docker-compose

# HSTR configuration - add this to ~/.zshrc

if command -v hstr &> /dev/null; then
  alias hh=hstr                    # hh to be alias for hstr
  setopt histignorespace           # skip cmds w/ leading space from history
  export HSTR_CONFIG=hicolor       # get more colors
  bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
fi

