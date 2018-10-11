alias ..='cd ..'
alias -- -='cd -'
alias cat='bat --theme "Solarized (light)"'
alias grep='rg'
alias l='exa'
alias ll='exa -al'
alias la='exa -a'
alias l.='exa -d .*'

alias sv='/usr/bin/vim.basic'
alias nv='nvim'

alias acl='sudo apt autoremove && sudo apt autoclean'
alias ain="sudo apt install"
alias ali="apt list -a"
alias are="sudo apt remove"
alias aup="sudo apt update && sudo apt upgrade"
#alias aconf="sudo nvim /etc/pacman.conf"

alias als='nv ~/.bash_aliases && source ~/.bash_aliases'
alias brc="nv ~/.bashrc && source ~/.bashrc"
alias bpr="nv ~/.bash_profile && source ~/.bash_profile"
alias edg="sudo nv /etc/default/grub && sudo update-grub"
alias fst="sudo nv /etc/fstab"
alias pro="nv ~/.profile && source ~/.profile"
alias vimrc='vim ~/.SpaceVim.d/init.toml'
alias svrc='sv ~/.SpaceVim.d/init.toml'
alias nvrc='nv ~/.config/nvim/init.vim'

alias gtc='git clone'
alias gts='git status'
alias gta='git add'

alias stpg='sudo -u postgres psql'


