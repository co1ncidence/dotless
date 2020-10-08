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
HISTSIZE=42069
SAVEHIST=42069

#fuck beeping
unsetopt beep

#lu
lu() {
	autoload -U "$1"; zle -N "$1"; bindkey "$2" "$1";
}

#keybinds
bindkey '^a'	beginning-of-line
bindkey '^e'	end-of-line
bindkey '^w'	backward-kill-word
bindkey '^f'	forward-word
bindkey '^b'  backward-word
bindkey '^r'  history-incremental-search-backward

#command hist
lu up-line-or-beginning-search   '^[[A'
lu down-line-or-beginning-search '^[[B'
lu up-line-or-beginning-search   '^p'
lu down-line-or-beginning-search '^n'

#alii
alias nvimrc="nvim ~/etc/nvim/init.vim"
alias c="clear"
alias class="cd ~/usr/doc/sch/"
alias web="cd ~/usr/git/co1ncidence.github.io/mysite/"
alias free="free -h"
alias df="df -h"
alias wset="hsetroot -cover"
alias r="ranger"
alias ff="shfm"
alias q="qalc"
alias ls="ls -CFv --color=auto --group-directories-first"
alias ll="ls -CFvl --color=auto --group-directories-first"
alias la="ls -CFvA --color=auto --group-directories-first"
alias wget="wget --no-hsts"
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias reconf="openbox --reconfigure"
alias tree="tree -C"
alias so="du -sh"
alias upx="xrdb -merge ~/etc/x/xresources"
alias n="note"
alias no="nvim ~/var/notes/notes.md"
alias nls="echo ; cat ~/var/notes/notes.md && echo ' '"
alias weather="clear && curl wttr.in"
alias smci="sudo make clean install"
alias sx="startx"
alias sudo="sls -u root"
alias su="sls -s"
alias sudoedit="sls -e"

#fff
f() {
	fff "$@"
  cd "$(cat "${XDG_CACHE_HOME:=${HOME}/var/cache}/fff/.fff_d")"
}

#volume
v() { amixer --quiet set Master "$1"% }

#prompt
PROMPT="%F{red}───%f "
RPROMPT="%B%1~%b"
