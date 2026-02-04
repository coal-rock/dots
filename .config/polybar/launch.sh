#!/usr/bin/env bash

primary=$(polybar --list-monitors | grep "primary" | cut -d":" -f1)
MONITOR=$primary DPI=115 polybar --reload top &
MONITOR=$primary DPI=115 polybar --reload bottom &

for m in $(polybar --list-monitors | grep -v "primary" | cut -d":" -f1); do
    MONITOR=$m DPI=96 polybar --reload top &
done
