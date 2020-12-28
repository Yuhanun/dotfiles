#!/bin/bash

[ ! -d $HOME/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim -c ":PluginInstall" -c "qa!" -e
cd $HOME/.vim/bundle/youcompleteme
./install.py --all
