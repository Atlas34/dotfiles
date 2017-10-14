#!/bin/bash

echo "Installing dotfiles"

# Install Tools + Oh-My-Zsh
source ~/.DotFiles/install/tools.sh

echo "Installing fonts"

# Install Fonts
source ~/.DotFiles/install/fonts.sh

echo "Configuring Zsh"
rm -f ~/.zshrc
ln -fs ~/.DotFiles/Themes/black-phoenix.zsh-theme ~/.oh-my-zsh/themes/black-phoenix.zsh-theme

# Add symlink
source ~/.DotFiles/install/link.sh

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

# VIM configuration
echo "Get VimPlug from github"
curl -fLo vim/vim.symlink/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "To Install vim plugins, run the following command under vim :PluginInstall"

echo "Done."
