#!/usr/bin/env bash

# Quit immediately in case any command fails
set -e

# Move config into place
printf "Placing config file...\n"
cp -r .config ~

# Install vim-plug
printf "Installing vim-plug...\n"
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Update plugins
printf "Installing neovim plugins...\n"
nvim -c "PlugInstall"

printf "Done!\n"
