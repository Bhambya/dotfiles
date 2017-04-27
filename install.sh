#!/bin/bash

# Install vim configuration
mv ~/.vim ~/.vim_bak
mv ~/.vimrc ~/.vimrc_bak
cp -r vim ~/.vim
cp vimrc ~/.vimrc

# Download vundle plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

#install youcompleteme
cd ~/.vim/bundle/youcompleteme
python install.py
