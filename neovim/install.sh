#!/usr/bin/env bash

# Install neovim in systems that have outdated packages from the package manager.
# Ex. Debian


INSTALL_DIR="${HOME}/.local/bin"
NVIM_DOWNLOAD="https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz"
#NVIM_DOWNLOAD="https://github.com/neovim/neovim-releases/releases/latest/download/nvim-linux-x86_64.tar.gz"  # For old glibc


# Quit immediately in case any command fails
set -e

printf "Installing neovim to ${INSTALL_DIR}...\n"

# Create required directories
mkdir -p "${INSTALL_DIR}"

# Delete old files if exists
printf "Cleaning up old installs...\n"
rm -rf "${INSTALL_DIR}/nvim" "${INSTALL_DIR}/nvim-linux-x86_64"

# Download and extract latest release
printf "Downloading nvim-linux-x86_64.tar.gz...\n"
curl -fLo "${INSTALL_DIR}/nvim-linux-x86_64.tar.gz" ${NVIM_DOWNLOAD}
printf "Extracting nvim-linux-x86_64.tar.gz...\n"
tar -xf "${INSTALL_DIR}/nvim-linux-x86_64.tar.gz" -C ${INSTALL_DIR}

# Delete old tar
rm "${INSTALL_DIR}/nvim-linux-x86_64.tar.gz"

# Symlink the executable back to the install directory
ln -s "${INSTALL_DIR}/nvim-linux-x86_64/bin/nvim" "${INSTALL_DIR}/nvim"

printf "Done! You may need to reopen your shell for neovim to be usable. Depending on your distro, you may have to add the install directory to your \$PATH variable. See the following example.\n\n"

printf "if [ -d ~/.local/bin ]; then\n    PATH=\$PATH:~/.local/bin\n    export PATH\nfi\n"
