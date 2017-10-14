# Dotfiles

This is my collection of **vim**, **tmux**, and **zsh configurations**.

## Contents

+ [Initial Setup and Installation](#initial-setup-and-installation)
+ [ZSH Setup](#zsh-setup)
+ [Vim](#vim-setup)
+ [Fonts](#fonts)
+ [Tmux](#tmux-configuration)

## Initial Setup and Installation

### Backup

First, you may want to backup any existing files that exist so this doesn't overwrite your work.

### Installation

First, clone the dotfiles repository to your computer. This can be placed anywhere, and symbolic links will be created to reference it from your home directory.

```bash
➜ git clone https://github.com/Atlas34/dotfiles.git ~/.dotfiles
➜ cd ~/.dotfiles
➜ ./install.sh
```

The install script will install all symbolic links into your home directory. Every file with a `.symlink` extension will be symlinked to the home directory with a `.` in front of it. As an example, `vimrc.symlink` will be symlinked in the home directory as `~/.vimrc`.

## ZSH Setup

ZSH is configured in the `zshrc.symlink` file, which will be symlinked to the home directory. The following occurs in this file:

## Vim Setup

### Installation

Vim is likely already installed on your system.

[`link.sh`](install/link.sh) will symlink the XDG configuration directory into your home directory and will then create symlinks for `.vimrc` and `.vim`.

Inside of [`.zshrc`](zsh/zshrc.symlink), the `EDITOR` shell variable is set to `vim`, defaulting to vim for editor tasks, such as git commit messages.

vim should just work once the correct plugins are installed. To install the plugins, you will need to open vim in the following way:

```bash
➜ vim +PlugInstall
```

## Fonts

The font script will retrieve and install [Powerline fonts](https://github.com/powerline/fonts/archive/master.zip)

## Tmux Configuration

Tmux is a terminal multiplexor which lets you create windows and splits in the terminal that you can attach and detach from. I use it to keep multiple projects open in separate windows and to create an IDE-like environment to work in where I can have my code open in vim and a shell open to run tests/scripts. Tmux is configured in [~/.tmux.conf](tmux/tmux.conf.symlink), and in [tmux/theme.sh](tmux/theme.sh), which defines the colors used, the layout of the tmux bar.

