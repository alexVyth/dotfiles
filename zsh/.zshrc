if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

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
alias bt='bluetoothctl'
alias ptest='TZ=UTC LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH" poetry run pytest'
alias runpod="$HOME/code/plum/infra/opsbox/runpod/run.sh"
alias ls='eza -l --icons --group-directories-first'
alias cat='bat'
alias yay='yay --noconfirm'

# GKE GCloud Auth Plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Initialize pyenv
eval "$(pyenv init -)"

# Enable powerlevel10 theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
