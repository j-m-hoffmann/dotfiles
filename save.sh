#! /bin/sh

cp ~/.bash_aliases ~/dotfiles/bash_aliases
cp ~/.config/nvim/init.vim ~/dotfiles/init.vim
git commit
git push -u origin master
