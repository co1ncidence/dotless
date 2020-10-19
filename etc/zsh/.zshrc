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
HISTFILE="$HOME/etc/zsh/.histfile"
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

#git status on ^b
kgs() { clear; git status -sb; zle redisplay; }
zle -N kgs; bindkey '^g' kgs

#ls on ^k
kls() { clear; ls -CFv --color=auto --group-directories-first -A;\
	zle redisplay; }
zle -N kls; bindkey '^k' kls

#todo list on ^u
todo() { echo ; echo ; cat ~/var/notes/notes.md ; echo;\
	zle redisplay; }
zle -N todo; bindkey '^u' todo

#alii
alias c="clear"
alias r="ranger"
alias q="qalc"
alias f="fff"
alias n="note"
alias ff="shfm"
alias no="nvim ~/var/notes/notes.md"
alias df="df -h"
alias sx="startx"
alias su="sls -s"
alias ls="ls -CFv --color=auto --group-directories-first"
alias ll="ls -CFvl --color=auto --group-directories-first"
alias la="ls -CFvA --color=auto --group-directories-first"
alias so="du -sh"
alias upx="xrdb -merge ~/etc/x/xresources"
alias web="cd ~/usr/git/co1ncidence.github.io/mysite/"
alias nls="echo ; cat ~/var/notes/notes.md ; echo"
alias free="free -h"
alias wset="hsetroot -cover"
alias wget="wget --no-hsts"
alias tree="tree -C"
alias smci="sudo make clean install"
alias sudo="sls -u root"
alias class="cd ~/usr/doc/sch/"
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias nvimrc="nvim ~/etc/nvim/init.vim"
alias reconf="openbox --reconfigure"
alias weather="clear && curl wttr.in"
alias sudoedit="sls -e"

#functions
v() { amixer --quiet set Master "$1"% }
lc() { cat "$@" | wc -l }
rm() { mv "$@" "$HOME/tmp/tsh/" }
linesh() { grep -icv '^[[:space:]]*#\|^$' "$@" }

#prompt
PROMPT="%F{magenta}─── %f"
RPROMPT="%F{white}%B%1~%b%f"
