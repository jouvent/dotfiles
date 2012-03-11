#! /bin/sh
# This install the dotfiles in home directory

CURPATH=`pwd`

rm ~/.vimrc
ln -s $CURPATH/vimrc ~/.vimrc
rm -r ~/.vim
ln -s $CURPATH/vim ~/.vim
rm ~/.bashrc
ln -s $CURPATH/bashrc ~/.bashrc

