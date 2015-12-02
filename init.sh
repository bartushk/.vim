i#!/bin/bash

cd "$(dirname "$0")"
ln -s ./.vimrc ../.vimrc
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
./install.sh --omnisharp-completer


