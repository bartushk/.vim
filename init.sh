#!/bin/bash

cd "$(dirname "$0")"

mkdir ./bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
vim +PluginInstall +qall

cd ./bundle/omnisharp-vim
git submodule update --init --recursive
cd server
xbuild

cd ../../tern_for_vim
npm install

cd ../vimproc.vim
make

cd ../YouCompleteMe
./install.sh --omnisharp-completer --clang-completer


