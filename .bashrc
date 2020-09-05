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
    alias ls='ls --color=auto'

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
export PATH="/home/co1ncidence/.local/bin:$PATH"
export TERMINAL=st
export EDITOR=nvim
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH=$PATH:~/bin/
export FZF_DEFAULT_COMMAND='find .'
export MANPAGER='nvim +Man! +"set nocul" +"set noshowcmd" +"set noruler" +"set noshowmode" +"set laststatus=2" +"set statusline=\ %t%=%p%%\ L%l:C%c\ "'
export FFF_OPENER=/home/co1ncidence/bin/opener
export SHFM_OPENER=/home/co1ncidence/bin/opener

# ALIASES
alias walls="cd ~/usr/pic/wallpapers/"
alias df="df -h /dev/sda3"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias c="clear"
alias class="cd ~/usr/doc/school/"
alias notes="cd ~/usr/doc/school/awo/"
alias t="todo.sh"
alias du="du -m | sort -n"
alias web="cd ~/git/mysite/"
alias webb="nvim ~/git/mysite/themes/hugo-kiera/static/css/styles-light.css"
alias free="free -h"
alias epub="epy"
alias wset="hsetroot -cover"
alias r="ranger"
alias f="fff"
alias ff="shfm"
alias q="qalc"
alias ls="ls -CF --color=auto --group-directories-first"
alias scdl="scdl -l"

# CUSTOM PROMPT
PS1='\[\e[0;91m\]\W\[\e[m\] \[\e0'

# FZF SHIT
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
