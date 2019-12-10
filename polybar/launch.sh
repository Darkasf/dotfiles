#!/usr/bin/env sh

## Add this to your wm startup file.

# Wait until the processes have been shut down
killall polybar
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
done
