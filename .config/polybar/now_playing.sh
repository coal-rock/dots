#!/usr/bin/env bash

artist=$(playerctl metadata artist 2> /dev/null)
title=$(playerctl metadata title 2> /dev/null)

if [ -z "$title" ]; then
    echo "no music playing"
    exit
fi

echo "$artist - $title"
