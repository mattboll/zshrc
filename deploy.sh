#!/bin/sh

git submodule init && git submodule update
cp .zshrc ~/.zshrc
cp -r oh-my-zsh ~/.oh-my-zsh
cp mattboll.zsh-theme ~/.oh-my-zsh/themes
mkdir -p ~/.oh-my-zsh/custom/plugins/k
cp k/k.sh ~/.oh-my-zsh/custom/plugins/k/k.plugin.zsh
cp -r zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins
