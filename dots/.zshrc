# ZSH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"
export plugins=(git)
source $ZSH/oh-my-zsh.sh

# SPACESHIP THEME
SPACESHIP_GIT_EMAIL_SHOW="${SPACESHIP_GIT_EMAIL_SHOW=true}"
SPACESHIP_GIT_EMAIL_PREFIX="${SPACESHIP_GIT_EMAIL_PREFIX="$SPACESHIP_GIT_SYMBOL"}"
SPACESHIP_GIT_EMAIL_SUFFIX="${SPACESHIP_GIT_EMAIL_SUFFIX=""}"
SPACESHIP_GIT_EMAIL_COLOR="${SPACESHIP_GIT_EMAIL_COLOR="magenta"}"
spaceship_git_email() {
  [[ $SPACESHIP_GIT_SHOW == false ]] && return

  local git_current_email=$(git config user.email)
  [[ -z "$git_current_email" ]] && return

  spaceship::section \
    "$SPACESHIP_GIT_EMAIL_COLOR" \
    "$SPACESHIP_GIT_EMAIL_PREFIX${git_current_email}$SPACESHIP_GIT_EMAIL_SUFFIX"
}
export SPACESHIP_GIT_EMAIL_PREFIX="with "
export SPACESHIP_GIT_EMAIL_COLOR="magenta"
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_TIME_PREFIX=""
export SPACESHIP_PROMPT_ORDER=(dir git git_email line_sep time char)

# EDITOR
export EDITOR=nvim

# NPM
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
  export PATH="/home/augustinas/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Aesthetics
if [[ -d "$HOME/.cache/wal" ]]; then 
  (cat ~/.cache/wal/sequences &)
fi

# Kubernetes/Docker
alias dco=docker-compose

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

# Other
source ~/.zshrc-platform # Platform specific, generated via script
source ~/.zshrc-secrets # Empty file by default

