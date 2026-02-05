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

    alias goon="~/.config/i3/goon.sh"
    alias lap="~/.config/i3/lap.sh"

    function cheat
        curl cheat.sh/$argv[1]
    end

    function cfile
        cat $argv[1] | xclip -selection clipboard
    end

    function scratch -a file_name
        if test -z "$file_name"
            echo "Usage: scratch FILE_NAME"
            echo "Creates a scratch directory and a blank file named FILE_NAME, then spawns a new fish instance at the scratch directory."
            return
        end

        set SCRATCH_PATH "/tmp/.scratch_$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13)"
        mkdir $SCRATCH_PATH; touch "$SCRATCH_PATH/$file_name" 
         
        cd $SCRATCH_PATH
        nvim $file_name
    end

    alias sc="scratch"

    alias copy="xclip -selection clipboard"
    alias paste="xclip -selection clipboard -o"
    alias cpath="pwd | copy"

    alias nosleep="xset s off  -dpms"
    alias yessleep="xset s on +dpms"

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

