# ZSH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"
export plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# EDITOR
export EDITOR=nvim

# NPM
export NODE_PACKAGES="$HOME/.npm"
export NPM_PACKAGES="$HOME/.npm"
export PATH=$PATH:/$NPM_PACKAGES/bin

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

# Arcanist
if [[ -d "$HOME/Projects/arcanist/bin" ]]; then
  export PATH="$PATH:$HOME/Projects/arcanist/bin/"
fi

# Aesthetics
if [[ -d "$HOME/.cache/wal" ]]; then 
  (cat ~/.cache/wal/sequences &)
fi

# My toys
export PATH="$PATH:$HOME/.local/bin"

# Kubernetes/Docker
alias dco="docker compose"

# HSTR configuration
if command -v hstr &> /dev/null; then
  alias hh=hstr                    # hh to be alias for hstr
  setopt histignorespace           # skip cmds w/ leading space from history
  export HSTR_CONFIG=hicolor       # get more colors
  bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
fi

# Zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# Spaceship
if command -v starship &> /dev/null; then
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

source /home/zexa/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias wezterm="flatpak run org.wezfurlong.wezterm" 

