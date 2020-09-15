# Global zsh environment file
#
# Place this in /etc/zsh/

# XDG Settings
export XDG_CONFIG_HOME="$HOME/etc/"
export XDG_DATA_HOME="$HOME/var/"
export XDG_CACHE_HOME="$HOME/var/cache/"

# X
export XAUTHORITY="${XDG_CONFIG_HOME:-$HOME/etc/}/x/xauth"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/etc/}/x/xinitrc"

# ZSH
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/etc/}/zsh"

# Set Path
export PATH=$PATH:"$HOME/usr/bin/"

# Program Specific Things
export TERMINAL="st"
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND='find .'
export MANPAGER="nvim -c 'set ft=man' -"
export FFF_OPENER="$HOME/usr/bin/opener"
export SHFM_OPENER="$HOME/usr/bin/opener"
export PASSWORD_STORE_DIR="$HOME/usr/pass/"

# configs
export GNUPGHOME="${XDG_CONFIG_HOME:-$HOME/etc/}/gnupg"
export GIMP2_DIRECTORY="${XDG_CONFIG_HOME:-$HOME/etc/}/GIMP/2.10"

export LESSHISTFILE="${XDG_CONFIG_HOME:-$HOME/etc/}.lesshst"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="{XDG_CONFIG_HOME:-$HOME/etc/}.gtkrc-2.0"
