#!/bin/bash

cd "$(dirname "$0")"

mkdir ./bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
vim +PluginInstall +qall

cd ./bundle/tern_for_vim
npm install

cd ../vimproc.vim
make

cd ../YouCompleteMe
./install.sh --clang-completer --racer-completer


