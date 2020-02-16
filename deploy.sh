#!/bin/sh

git submodule init && git submodule update
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
cp mattboll.zsh-theme ~/.oh-my-zsh/themes
mkdir -p ~/.oh-my-zsh/custom/plugins/k
cp k/k.sh ~/.oh-my-zsh/custom/plugins/k/k.plugin.zsh
cp -r zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins
