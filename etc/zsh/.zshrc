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

# Keybinds
bindkey -e

# Aliases
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
alias nls="grep -v '>' ~/var/notes/notes.md | grep -v '#' && echo ' '"
alias weather="clear && curl wttr.in"
alias smci="sudo make clean install"
alias sudo="sls -u root"
alias su="sls -s"
alias sudoedit="sls -e"
alias sx="startx"

# FUNCTIONS

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/var/cache}/fff/.fff_d")"
}

# Prompt
# evaluate terminal width and placement of funcs
function prompt-length() {
  emulate -L zsh
  local COLUMNS=${2:-$COLUMNS}
  local -i x y=$#1 m
  if (( y )); then
    while (( ${${(%):-$1%$y(l.1.0)}[-1]} )); do
      x=y
      (( y *= 2 ));
    done
    local xy
    while (( y > x + 1 )); do
      m=$(( x + (y - x) / 2 ))
      typeset ${${(%):-$1%$m(l.x.y)}[-1]}=$m
    done
  fi
  echo $x
}

# print an arbitrary full line to use later
function fill-line() {
  emulate -L zsh
  local left_len=$(prompt-length $1)
  local right_len=$(prompt-length $2 9999)
  local pad_len=$((COLUMNS - left_len - right_len - ${ZLE_RPROMPT_INDENT:-1}))
  if (( pad_len < 1 )); then
    # Not enough space for the right part. Drop it.
    echo -E - ${1}
  else
    local pad=${(pl.$pad_len.. .)}  # pad_len spaces
    echo -E - ${1}${pad}${2}
  fi
}

# set prompt
function set-prompt() {
  emulate -L zsh
  local git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  git_branch=${${git_branch//\%/%%}/\\/\\\\\\}  # escape '%' and '\'

  local top_right=''
  local top_left=''
  local bottom_left=' %F{red}───%f '
  local bottom_right='%F{white}%1~%f '

  PROMPT="$(fill-line "$top_left" "$top_right")"$'\n'$bottom_left
  RPROMPT=$bottom_right
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd set-prompt
setopt noprompt{bang,subst} prompt{cr,percent,sp}
