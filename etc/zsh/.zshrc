# AUTOCOMPLETION SETTINGS
zstyle ':completion:*' completer _expand _complete _ignored _correct
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/co1ncidence/etc/zsh/.zshrc'

# COMPSTYLE SETTINGS
autoload -Uz compinit
compinit

# HISTFILE SETTINGS
HISTFILE=~/etc/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# RANDOM SETTINGS
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

# ALIASES
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
alias ls="ls -CF --color=auto --group-directories-first"
alias ll='ls -l'
alias la='ls -A'
alias wget="wget --no-hsts"

# CONFIG ALIASES
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias dunst="dunst -conf ~/etc/dunst/dunstrc"

# PROMPT
PROMPT='%B%F{red}%1~%f%b '
