# General settings
set -k
setopt auto_cd
setopt autocd extendedglob nomatch notify

# Autocomplete settings
setopt NO_NOMATCH
setopt complete_in_word
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list \
	'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -U compinit && compinit -C


# Compinit
autoload -Uz compinit
compinit

# History Settings
setopt hist_ignore_dups
HISTFILE=~/etc/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Don't beep
unsetopt beep

# Emacs bindings
bindkey -e

# Aliases
alias walls="cd ~/med/pic/wlp/"
alias df="df -h /dev/sda3"
alias nvimrc="nvim ~/etc/nvim/init.vim"
alias c="clear"
alias class="cd ~/usr/doc/sch/"
alias web="cd ~/usr/git/co1ncidence.github.io/mysite/"
alias free="free -h"
alias epub="epy"
alias wset="hsetroot -cover"
alias r="ranger"
alias ff="shfm"
alias q="qalc"
alias ls="ls -CFv --color=auto --group-directories-first"
alias ll='ls -l'
alias la='ls -A'
alias wget="wget --no-hsts"
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias dunst="dunst -conf ~/etc/dunst/dunstrc"
alias reconf="openbox --reconfigure"
alias convert="pandoc -s -o"
alias lel="info='n os wm sh n' separator=' - ' accent='1' fet.sh"
alias tree="tree -C"
alias so="du -sh"
alias sudo="sls -u root"
alias upx="xrdb -merge ~/etc/x/xresources"
alias n="note"
alias no="nvim ~/var/notes/notes.md"
alias t="termtosvg"

# Prompt
PROMPT='%F{239}%1~%f %B%F{red}>%b%f '

### FUNCTIONS

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/var/cache}/fff/.fff_d")"
}
