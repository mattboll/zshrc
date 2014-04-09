#!/bin/sh

git submodule init && git submodule update
cp .zshrc ~/.zshrc
cp -r oh-my-zsh ~/.oh-my-zsh
cp mattboll.zsh-theme ~/.oh-my-zsh/themes
