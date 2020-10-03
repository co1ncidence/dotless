#allow for comments in shell
set -k

#cd by typing dir name
setopt auto_cd
setopt autocd extendedglob nomatch notify

#completion
setopt NO_NOMATCH
setopt complete_in_word
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list \
	'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -U compinit && compinit -C


#compinit
autoload -Uz compinit
compinit

#history
setopt hist_ignore_dups
HISTFILE=~/etc/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

#fuck beeping
unsetopt beep

#emacs!
bindkey -e

#alii
#is that plural of alias?
#i have no clue tbh
alias walls="cd ~/med/wlp/"
alias nvimrc="nvim ~/etc/nvim/init.vim"
alias c="clear"
alias class="cd ~/usr/doc/sch/"
alias web="cd ~/usr/git/co1ncidence.github.io/mysite/"
alias free="free -h"
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
alias tree="tree -C"
alias so="du -sh"
alias upx="xrdb -merge ~/etc/x/xresources"
alias n="note"
alias no="nvim ~/var/notes/notes.md"
alias nls="echo ; grep -v '>' ~/var/notes/notes.md | grep -v '#' && echo ' '"
alias weather="clear && curl wttr.in"
alias smci="sudo make clean install"
alias sx="startx"

#not "safe" but who cares
alias sudo="sls -u root"
alias su="sls -s"
alias sudoedit="sls -e"

#functions
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/var/cache}/fff/.fff_d")"
}

v() {
	amixer set Master "$1"%
}

#prompt
PROMPT="%B%F{white}%1~%f%b "
