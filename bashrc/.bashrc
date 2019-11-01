# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
shopt -s checkwinsize
export HISTCONTROL=ignoredups
alias tb='tf && tensorboard --logdir .'
export PS1="\[$(tput bold)\]\u@\h\[$(tput sgr0)\][\w]\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

alias gitpush='git add * && git commit -m "update" && git push'
alias rslab='ssh vythoulkas@147.102.106.69'
alias pi='ssh pi@192.168.1.101'
alias nvidia='optimus-manager --switch nvidia'
alias intel='optimus-manager --switch intel'
alias hybrid='optimus-manager --switch hybrid'
alias tf='conda activate tf'
alias d='conda deactivate'

## ls
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'
alias grep='grep --color'
##### Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

## Power State Aliases
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
