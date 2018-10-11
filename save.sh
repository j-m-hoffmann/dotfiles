#! /bin/sh
#save.sh

cp ~/.bash_aliases ~/.dotfiles
#cp ~/.config/nvim/init.vim ~/dotfiles/init.vim
cp ~/.vimrc ~/.dotfiles
git add ~/.dotfiles
git commit
git push -u origin raspi
