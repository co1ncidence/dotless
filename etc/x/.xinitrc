#! /bin/sh

# load modmaps
userresources="$XDG_CONFIG_HOME/x/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="/etc/X11/xinit/.Xresources"
sysmodmap="/etc/X11/xinit/.Xmodmap"

# load xresources
xrdb -merge /home/co1ncidence/etc/x/.Xresources
xset b off &

# more modmap stuff
[ -f "$sysresources" ] &&   xrdb -load "$sysresources"
[ -f "$sysmodmap" ] &&      xmodmap "$sysmodmap"
[ -f "$userresources" ] &&  xrdb -load "$userresources"
[ -f "$usermodmap" ] &&     xmodmap "$usermodmap"
[ -d "/etc/X11/xinit/xinitrc.d" ] && \
 for f in "/etc/X11/xinit/xinitrc.d/?*.sh" ; do
  [ -x "$f" ] && . "$f"
 done
 unset "f"

 # source xmprofile
. "$XDG_CONFIG_HOME/x/xprofile"
