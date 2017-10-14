#!/bin/sh

echo "Update and Upgrade the system"
sudo pacman -Syu

echo "Installing git, wget, vim, tmux, ctags and htop"
sudo pacman -S  wget git vim tmux ctags htop zsh

echo "Installing Oh My Zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
