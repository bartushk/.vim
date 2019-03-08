#!/bin/bash

cd "$(dirname "$0")"

mkdir ./bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.bashrc
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
ln -s ~/.vim/.bashrc ~/.bashrc
vim +PluginInstall +qall

cd ../YouCompleteMe
./install.py --racer-completer
