# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Set theme and source Powerlevel10k configuration if it exists
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Enable vi mode cursor setting
export VI_MODE_SET_CURSOR=true

# Plugins
plugins=(
  vi-mode
  fzf
  docker-compose
  zsh-completions
  zsh-syntax-highlighting
  zoxide
)

# Source Oh My Zsh
source "$ZSH/oh-my-zsh.sh"
zstyle ':omz:update' mode auto

# Aliases
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=$(<"$HOME/.rangerdir"); cd "$LASTDIR"'
alias bt='bluetoothctl'
alias ptest='docker-compose exec api py.test -vv -s --allow-hosts=localhost,redis'
alias runpod="$HOME/code/plum/infra/opsbox/runpod/run.sh"
alias ls='eza -l --icons --group-directories-first'
alias cat='bat'

# GKE GCloud Auth Plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Initialize pyenv
eval "$(pyenv init -)"
CLOUDSDK_PYTHON=python3.9
