alias ..='cd ..'
alias -- -='cd -'

alias cat='bat --theme "Solarized (light)"'
alias grep='rg'

#alias ls="exa"
alias la="exa -a"
alias ll="exa -la"
alias l.='ls -d .*'

alias du.='du --max-depth=1 | less'

alias aup="yay -Syua"
alias pup="sudo pacman -Syu"
#alias rmo='sudo pacman -Rs $(pacman -Qqdt)'
alias pcl='sudo paccache -rk2 && sudo pacman -Rs $(pacman -Qqdt)'
alias pconf="sudo nvim /etc/pacman.conf"

alias als='nvim ~/.bash_aliases && source ~/.bash_aliases'
alias brc="nvim ~/.bashrc && source ~/.bashrc"
alias bpr="nvim ~/.bash_profile && source ~/.bash_profile"
alias edg="sudo nvim /etc/default/grub && sudo update-grub"
alias fst="sudo nvim /etc/fstab"
alias pro="nvim ~/.profile && source ~/.profile"

alias nv='nvim'
alias nvrc='nvim ~/.config/nvim/init.vim'

alias stpg="sudo -u postgres -i"

#https://zwischenzugs.com/2015/07/01/bash-shortcuts-gem/
alias binds="bind -P | grep 'can be'" 
#alias binds="stty -a | awk 'BEGIN{RS=\"[;n]+ ?\"}; /= ..$/'"

#set -o vi-insert
#bind -m vi-insert "\C-l":clear-screen
#https://www.linux.org/threads/clear-clear-your-terminal-screen.78/

