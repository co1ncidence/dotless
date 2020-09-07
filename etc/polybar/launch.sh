#!/usr/bin/env sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq -c ~/etc/polybar/config.ini main &
polybar -rq -c ~/etc/polybar/config.ini workspaces &
polybar -rq -c ~/etc/polybar/config.ini utils &
