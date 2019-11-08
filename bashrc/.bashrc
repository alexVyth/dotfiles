# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## source scripts
source /usr/share/bash-completion/bash_completion
source /usr/share/doc/pkgfile/command-not-found.bash

## plugins
shopt -s autocd
shopt -s checkwinsize

## History
export HISTSIZE=100000
export HISTCONTROL=ignoredups

## PS1
export PS1="\[$(tput bold)\]\u@\h\[$(tput sgr0)\][\w]\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

## personal aliases
alias gitpush='git add * && git commit -m "update" && git push'
alias tb='tf && tensorboard --logdir .'
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

## grep
alias grep='grep --color'

## minoconda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
