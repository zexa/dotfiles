# ZSH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"
export plugins=(git)
source $ZSH/oh-my-zsh.sh

# EDITOR
export EDITOR=nvim

# NPM
if [[ -d "$HOME/.npm/bin" ]]; then
  export PATH=$PATH:$HOME/.npm/bin
fi

# Rust
if [[ -d "$HOME/.cargo" ]]; then
  source $HOME/.cargo/env
fi

# Python
if [[ -d "$HOME/.poetry" ]]; then
  export PATH="$HOME/.poetry/bin:$PATH"
  source $HOME/.poetry/env
fi
if [[ -d "$HOME/.pyenv" ]]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [[ -d "$HOME/go/bin" ]]; then
  export PATH="$HOME/go/bin:$PATH"
fi

# Arcanist
if [[ -d "$HOME/Projects/arcanist/bin" ]]; then
  export PATH="$PATH:$HOME/Projects/arcanist/bin/"
fi

# My toys
export PATH="$PATH:$HOME/.local/bin"

# Kubernetes/Docker
alias dco="docker compose"
alias docker-compose="docker compose"

# Zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# Spaceship
if command -v spaceship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# Erd
if command -v erd &> /dev/null; then
  alias ls="erd --level 1 --human --hidden --icons --dirs-first --truncate"
fi

# httpie
alias http="http --verbose --all"

# Other
source ~/.zshrc-platform # Platform specific, generated via script
source ~/.zshrc-secrets # Empty file by default

