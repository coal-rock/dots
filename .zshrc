export ZSH="$HOME/.oh-my-zsh"
export IDF_PATH="$HOME/esp/ESP8266_RTOS_SDK"
export GODOT4_BIN="/usr/bin/godot"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /etc/profile.d/devkit-env.sh
export PATH=/home/nicole/.nimble/bin:$PATH
export PATH=/home/nicole/.local/bin:$PATH
export PATH=/home/nicole/Coding/Zig/zig:$PATH
export PATH=/home/nicole/Coding/Zig/zls/zig-out/bin:$PATH
export PATH=/home/nicole/.config/emacs/bin:$PATH
export PATH="$PATH:$HOME/esp/xtensa-lx106-elf/bin"
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SHUT THE FUCK UP
alias bc="bc -q"

function cfile() {
    cat $1 | xclip -selection clipboard
}

alias copy="xclip -selection clipboard"
alias paste="xclip -selection clipboard -o"
alias cpath="pwd | copy"

alias nvconf="nvim ~/.config/nvim/init.lua"
alias zconf="nvim ~/.zshrc"
alias i3conf="nvim ~/.config/i3/config"
alias conf="cd ~/.config/"
alias integrated="supergfxctl -m Integrated"
alias hybrid="supergfxctl -m Hybrid"
alias lain="cd ~/Shows/Lain"

alias coding="cd ~/Coding/"
alias corust="cd ~/Coding/Rust/"
alias cop="cd ~/Coding/Python/"
alias coc="cd ~/Coding/C/"
alias cogo="cd ~/Coding/Go/"
alias conim="cd ~/Coding/Nim/"
alias cogodot="cd ~/Coding/Godot/"

alias blend="cd ~/Blender/"
alias games="cd ~/Games/"
alias emu="cd ~/Emulation/"
alias scripts="cd ~/Scripts"
alias tools="cd ~/Tools"
alias important="cd ~/Important"
alias shows="cd ~/Shows"
alias 3dp="cd ~/3DPrinting"
alias notes="cd ~/Notes"
alias pnotes="cd ~/Notes/Personal"
alias snotes="cd ~/Notes/School"

alias cat="bat --style=plain"
alias ls="exa --icons --group-directories-first"

# bun completions
[ -s "/home/nicole/.bun/_bun" ] && source "/home/nicole/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:/home/nicole/.spicetify

[ -f "/home/nicole/.ghcup/env" ] && source "/home/nicole/.ghcup/env" # ghcup-env

eval "$(zoxide init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
