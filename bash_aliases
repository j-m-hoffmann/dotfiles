#put this in your ~/.bashrc
#if [ -f ~/.bash_aliases ]; then
#   . ~/.bash_aliases
#fi
alias ..='cd ..'
#alias vi='nvim'
alias nv='nvim'
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias aptup='sudo apt update && sudo apt upgrade'
alias aptin='sudo apt install'
alias aliases='nvim ~/.bash_aliases && source ~/.bash_aliases'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias svdf='~/dotfiles/save.sh'
alias lddf='~/dotfiles/load.sh'
