# MY WEIRD ASS BASHRC

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -A'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

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
alias volume="amixer set Master"
alias wget="wget --no-hsts"

# CONFIG ALIASES
alias sxhkd="sxhkd -c ~/etc/sxhkd/sxhkdrc"
alias dunst="dunst -conf ~/etc/dunst/dunstrc"

# CUSTOM PROMPT
PS1='\[\e[0;1m\]\W\[\e[m\] \[\e[0;1;91m\]:\[\e[m\] \[\e0'

# FZF SHIT
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
