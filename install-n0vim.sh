#!/bin/sh
set -ex
sudo apt -y install wget git cmake build-essential python-dev python3-dev

if [ ! -d ".vim" ]; then
	rm -rf ~/.vim
fi

if [! -f "~/.vimrc"]; then
	rm ~/.vimrc
fi

mkdir ~/.vim

# install bundle vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall

# build YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer 
