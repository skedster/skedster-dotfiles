#!/usr/bin/env bash

pkill polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

xrandr --output eDP-1-0 --off --output HDMI-0 --auto --primary

feh --bg-color '#1e1e2e'

MONITOR=HDMI-1-0 polybar --reload &
