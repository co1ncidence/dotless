# General settings
set -k
setopt auto_cd
setopt autocd extendedglob nomatch notify

# autocomplete stuff
setopt NO_NOMATCH
setopt complete_in_word
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list \
	'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -U compinit && compinit -C


# compinit
autoload -Uz compinit
compinit

# history settings
setopt hist_ignore_dups
HISTFILE=~/etc/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# RANDOM SETTINGS
unsetopt beep
bindkey -e

# aliases
alias walls="cd ~/usr/pic/wallpapers/"
alias df="df -h /dev/sda3"
alias nvimrc="nvim ~/etc/nvim/init.vim"
alias c="clear"
alias class="cd ~/usr/doc/school/"
alias notes="cd ~/usr/doc/school/awo/"
alias du="du -m | sort -n"
alias web="cd ~/git/co1ncidence.github.io/mysite/"
alias free="free -h"
alias epub="epy"
alias wset="hsetroot -cover"
alias r="ranger"
alias f="fff"
alias ff="shfm"
alias q="qalc"
alias ls="ls -CFv --color=auto --group-directories-first"
alias ll='ls -l'
alias la='ls -A'
alias wget="wget --no-hsts"
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias dunst="dunst -conf ~/etc/dunst/dunstrc"
alias reconf="openbox --reconfigure"
alias doctopdf="pandoc -s -o"

# PROMPT
PROMPT='%B%F{white}%1~%f%b '
