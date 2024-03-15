#! /bin/sh
# This install the dotfiles in home directory

CURPATH=`pwd`

mkdir -p ~/.config

# bash
rm -f ~/.bashrc
ln -s $CURPATH/bashrc ~/.bashrc

rm -rf ~/.bash_scripts
mkdir ~/.bash_scripts
ln -s $CURPATH/bash/bash_aliases ~/.bash_scripts/bash_aliases

# nvim
rm -f ~/.config/nvim
ln -s $CURPATH/nvim ~/.config/nvim

# git
rm -f ~/.gitconfig
ln -s $CURPATH/gitconfig ~/.gitconfig

