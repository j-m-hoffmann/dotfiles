alias ..='cd ..'
alias -- -='cd -'

alias cat='bat --theme "Solarized (light)"'

alias grep='rg'

alias gtc='git clone'
alias gts='git status'
alias gta='git add'

alias ls='exa'
alias ll='ls -al'
alias la='ls -a'
alias l.='ls -d .*'

alias nv='nvim'
alias nvrc='nvim ~/.config/nvim/init.vim'

alias pcl='sudo apt autoremove && sudo apt autoclean'
alias pco="sudo nvim /etc/apt/sources.list"
alias pin="sudo apt install"
alias pli="apt list -a"
alias pre="sudo apt remove"
alias pup="sudo apt update && sudo apt upgrade"

alias als='nvim ~/.bash_aliases && source ~/.bash_aliases'
alias brc="nvim ~/.bashrc && source ~/.bashrc"
alias bpr="nvim ~/.bash_profile && source ~/.bash_profile"
alias edg="sudo nvim /etc/default/grub && sudo update-grub"
alias fst="sudo nvim /etc/fstab"
alias pro="nvim ~/.profile && source ~/.profile"

alias stpg='sudo -u postgres psql'

alias sv='/usr/bin/vim.basic'
alias svrc='sv ~/.SpaceVim.d/init.toml'
#alias vrc='vim ~/.SpaceVim.d/init.toml'
