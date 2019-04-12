#!/bin/bash
PS1='\[\e[36;3m\]\u@\h\[\e[0m\]:\[\e[35m\]\w\[\e[0m\]\$ '

if  [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle no exist"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp ./.vimrc ~/
vim -c BundleInstall
