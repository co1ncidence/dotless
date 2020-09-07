# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/co1ncidence/etc/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/etc/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
PROMPT="%~ : "
# ENV VARS
export PATH=$PATH:~/usr/bin/
export PATH="/home/co1ncidence/.local/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"
export TERMINAL=st
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='find .'
export MANPAGER='nvim +Man! +"set nocul" +"set noshowcmd" +"set noruler" +"set noshowmode" +"set laststatus=2" +"set statusline=\ %t%=%p%%\ L%l:C%c\ "'
export FFF_OPENER=/home/co1ncidence/bin/opener
export SHFM_OPENER=/home/co1ncidence/bin/opener
export XDG_CONFIG_HOME=/home/co1ncidence/etc/
export GNUPGHOME=/home/co1ncidence/etc/gnupg/
export PASSWORD_STORE_DIR=/home/co1ncidence/usr/pass/
export GIMP2_DIRECTORY=/home/co1ncidence/etc/GIMP/2.10/
export XDG_DATA_HOME=/home/co1ncidence/var/
export XDG_CACHE_HOME=/home/co1ncidence/var/cache/
export LESSHISTFILE=/home/co1ncidence/etc/.lesshst

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
alias volume="amixer set Master"
alias wget="wget --no-hsts"

# CONFIG ALIASES
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias dunst="dunst -conf ~/etc/dunst/dunstrc"
