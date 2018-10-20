#! /bin/sh
#save.sh

cp ~/.bash_aliases ~/.dotfiles
cp ~/.bashrc ~/.dotfiles
cp ~/.bash_profile ~/.dotfiles
cp ~/.profile ~/.dotfiles
cp ~/.config/nvim/init.vim ~/.dotfiles
cd ~/.dotfiles
git add .
git commit
git push -u origin ubuntu
