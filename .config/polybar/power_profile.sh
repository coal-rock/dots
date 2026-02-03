#!/usr/bin/env bash

IFS=' '

# Current profile is Performance
read -ra word_arr <<< "$(asusctl profile -p | tail -3 | head -n 1)" 

# Current[0] profile[1] is[2] Performance[3]
echo ${word_arr[3]}

