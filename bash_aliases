alias ..='cd ..'
alias -- -='cd -'

#https://zwischenzugs.com/2015/07/01/bash-shortcuts-gem/
alias binds="bind -P | grep 'can be'" 
#alias binds="stty -a | awk 'BEGIN{RS=\"[;n]+ ?\"}; /= ..$/'"

alias cat='bat --theme "Solarized (light)"'

alias du.='du --max-depth=1 | less'

alias grep='rg'

#alias ls="exa"
alias la="exa -a"
alias ll="exa -la"
alias l.='ls -d .*'

alias nv='nvim'
alias nvrc='nvim ~/.config/nvim/init.vim'

#alias rmo='sudo pacman -Rs $(pacman -Qqdt)'
alias pcl='sudo paccache -rk2 && sudo pacman -Rs $(pacman -Qqdt)'
alias pco="sudo nvim /etc/pacman.conf"
alias pin="sudo pacman -Syu"
alias pli="pacman -Ss"
alias pre="sudo pacman -Rs"
alias pup="sudo pacman -Syu"

# system files
alias als='nvim ~/.bash_aliases && source ~/.bash_aliases'
alias brc="nvim ~/.bashrc && source ~/.bashrc"
alias bpr="nvim ~/.bash_profile && source ~/.bash_profile"
alias edg="sudo nvim /etc/default/grub && sudo update-grub"
alias fst="sudo nvim /etc/fstab"
alias pro="nvim ~/.profile && source ~/.profile"

alias stpg="sudo -u postgres -i"

#set -o vi-insert
#bind -m vi-insert "\C-l":clear-screen
#https://www.linux.org/threads/clear-clear-your-terminal-screen.78/

alias yup="yay -Syua"
