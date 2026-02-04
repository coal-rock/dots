function fish_greeting
    # removes default greeting
end

if status --is-interactive
    # vim is so based
    fish_vi_key_bindings

    # gruvbox is so based
    source ~/.config/fish/gruvbox.fish
    theme_gruvbox dark medium

    # git
    export GIT_EDITOR=nvim

    # default replacements
    alias ls="exa --icons=always"
    alias cat="bat"

    # directory shortcuts
    alias corust="cd ~/Coding/Rust" 
    alias coc="cd ~/Coding/C"
    alias cojava="cd ~/Coding/Java"
    alias coding="cd ~/Coding"
    alias cop="cd ~/Coding/Python"
    alias cocs="cd ~/Coding/C#"
    alias tools="cd ~/Tools"
    alias downloads="cd ~/Downloads"
    alias 3dp="cd ~/3DPrinting"
    alias important="cd ~/Important"
    alias cdo="cd ~/CDO"
    alias emu="cd ~/Emulation"

    # scripts
    function goon 
        xrandr --output eDP-1 --primary --mode 2560x1600 --pos 1080x1080 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-1-0.2 --mode 1920x1080 --pos 0x126 --rotate left --output DP-1-0.3 --mode 1920x1080 --pos 2485x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off --output DP-1-2 --off
    end

    function lap
        xrandr --output eDP-1 --primary --mode 2560x1600 --pos 1080x1163 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-1-0.2 --off --output DP-1-0.3 --off --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off --output DP-1-2 --off
    end

    function cheat
        curl cheat.sh/$argv[1]
    end

    function cfile
        cat $argv[1] | xclip -selection clipboard
    end

    alias copy="xclip -selection clipboard"
    alias paste="xclip -selection clipboard -o"
    alias cpath="pwd | copy"


    # configs
    alias i3conf="nvim ~/.config/i3/config"
    alias swconf="nvim ~/.config/sway/config"
    alias fconf="nvim ~/.config/fish/config.fish"
    alias nvconf="nvim ~/.config/nvim/init.lua"
    alias polyconf="nvim ~/.config/polybar/config.ini"
    alias piconf="nvim ~/.config/picom/picom.conf"
    alias conf="cd ~/.config"

    # enable vsync
    alias vsync-on="picom --vsync --backend glx"

    # applications
    alias fm="pcmanfm"

    # dotfile management
    alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

    # atuin
    atuin init fish --disable-up-arrow | source
end

