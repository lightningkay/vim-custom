#!/bin/bash

function install_fonts_on_linux()
{
    mkdir ~/.fonts

    rm -rf ~/.fonts/PowerlineSymbols.otf
    cp ./fonts/PowerlineSymbols.otf ~/.fonts

    rm -rf ~/.fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/.fonts

    fc-cache -vf ~/.fonts

    mkdir -p ~/.config/fontconfig/conf.d

    rm -rf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
    cp ./fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d
}

if  [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle no exist"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

rm -rf ~/.vimrc
cp .vimrc ~
rm -rf ~/.vim
mkdir ~/.vim
cp -R ./plugin ~/.vim
rm -rf ~/.vim/colors
cp -R ./colors ~/.vim
cp ./.vimrc ~/

install_fonts_on_linux

vim -c BundleInstall
