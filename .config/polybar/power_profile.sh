#!/usr/bin/env bash

IFS=' '

echo "$(asusctl profile -p | grep 'Active profile is ' | awk '{print $NF}')"
