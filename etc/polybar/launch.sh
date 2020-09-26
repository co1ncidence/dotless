#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar -rq -c ~/etc/polybar/config.ini main &

cbatticon -n &
nm-applet &
