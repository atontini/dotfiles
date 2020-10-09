#!/bin/sh

#This script install the dotfiles in the system. It can be used for a fresh linux install

#Copy dotfiles  into the home directory
cp .vimrc $HOME/.vimrc
cp .zshrc $HOME/.zshrc

# Download and install vim-plug in his directory
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install every plugin contained in the dotfile
vim +PlugInstall +qall

