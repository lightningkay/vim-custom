#!/bin/bash

if  [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle no exist"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp ./.vimrc ~/
vim -c BundleInstall
