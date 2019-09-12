#!/usr/bin/env bash
BASEDIR=$(dirname $0)
cd $BASEDIR

ln -s ${PWD}/vimrc ~/.vimrc
ln -s ${PWD}/tmux.conf ~/.tmux.conf
