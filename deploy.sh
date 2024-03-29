#!/bin/sh

rm -rf ~/.oh-my-zsh
git submodule init && git submodule update
export RUNZSH="no"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "COPY FILES"
cp .zshrc ~/.zshrc
cp mattboll.zsh-theme ~/.oh-my-zsh/themes
cp -r zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins
git clone https://github.com/1995parham/buffalo.zsh ~/.oh-my-zsh/custom/plugins/buffalo
