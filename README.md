# Deploying

> [!NOTE]  
> This assumes you are using Arch with systemd.
> 
> No I will not use dinit, nor OpenRC, nor runit. 

Install [yay](https://github.com/Jguer/yay)
```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Install dependencies
```sh
yay -S --needed
  i3-wm \
  i3-lock \
  flameshot \
  atuin \
  fish \
  neovim \
  emacs \
  alacritty \
  feh \
  polybar \
  obsidian \
  pcmanfm \
  rofi \
  xorg-xset \
  xorg-xinit \
  firefox \
  pavucontrol \
  libnotify \
  dunst \
  bat \
  exa \
  playerctl \
  picom \
  gtk-engine-murrine \
  gruvbox-gtk-theme-git \
  ly
```

Enable login manager:
```sh
systemctl enable ly@tty2.service
```
