#!/usr/bin/env sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq -c ~/.config/polybar/config.ini main &
polybar -rq -c ~/.config/polybar/config.ini workspaces &
