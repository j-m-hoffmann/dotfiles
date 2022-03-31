#!/usr/bin/env bash
set -euo pipefail

# cp ~/.bash_aliases ./.bash_aliases
# cp ~/.bashrc ./.bashrc
# cp ~/.bash_profile ~/.dotfiles
# cp ~/.profile ./.profile
# cp ~/.config/nvim/init.vim ./init.vim
git add .
git commit
git push -u origin suse
