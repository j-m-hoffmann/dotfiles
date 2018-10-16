#! /bin/sh
#save.sh

cp ~/.bash_aliases ~/.dotfiles/bash_aliases
cp ~/.bashrc ~/.dotfiles/bashrc
cp ~/.bash_profile ~/.dotfiles/bash_profile
cp ~/.profile ~/.dotfiles/profile
cp ~/.config/nvim/init.vim ~/.dotfiles/init.vim
git add ~/.dotfiles
git commit
git push -u origin arch
