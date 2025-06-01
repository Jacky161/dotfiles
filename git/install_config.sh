#!/usr/bin/env bash

# Quit immediately in case any command fails
set -e

# Move config into place
printf "Placing config file...\n"
cp .gitconfig ~

printf "Done! Make sure to fill in the blank sections in ~/.gitconfig.\n"
