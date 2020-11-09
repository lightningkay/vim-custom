#!/bin/bash

function install_fonts_on_linux()
{
    mkdir ~/.fonts
    mkdir -p ~/.config/fontconfig/conf.d

    rm -rf ~/.fonts/PowerlineSymbols.otf
    rm -rf ~/.fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    rm -rf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf

    cp ./fonts/PowerlineSymbols.otf ~/.fonts
    cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/.fonts
    cp ./fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d

    fc-cache -vf ~/.fonts
}

rm -rf ~/.vimrc
rm -rf ~/.vim

mkdir ~/.vim
cp .vimrc ~/
cp -r ./colors ~/.vim

if  [ ! -f ~/.vim/autoload/plug.vim ]; then
    echo "vim-plug no exist"
    mkdir -p ~/.vim/autoload
    wget -O ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

install_fonts_on_linux

vim -c PluginInstall
