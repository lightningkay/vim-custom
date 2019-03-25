#!/bin/bash
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if  [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle no exist"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp ./.vimrc ~/
vim -c BundleInstall
