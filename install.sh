#!/usr/bin/env bash
BASEDIR=$(dirname $0)
cd $BASEDIR

ln -s ${PWD}/vimrc ~/.vimrc
ln -s ${PWD}/tmux.conf ~/.tmux.conf

echo >> ~/.bashrc
echo "alias tmux=\"tmux -2\"" >> ~/.bashrc
source ~/.bashrc
