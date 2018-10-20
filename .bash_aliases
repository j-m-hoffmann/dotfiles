alias ..='cd ..'
alias -- -='cd -'

#https://zwischenzugs.com/2015/07/01/bash-shortcuts-gem/
alias binds='bind -P | grep "can be" | less' 
#alias binds="stty -a | awk 'BEGIN{RS=\"[;n]+ ?\"}; /= ..$/'"

alias cat='bat --theme "Solarized (light)"'

alias du.='du --max-depth=1'

alias grep='rg'

# git
alias gad='git add'
alias gam='git commit -am'
alias gcl='git clone'
alias gco='git checkout'
alias gdi='git diff'
alias gcm='git commit -m'
alias gpu='git push'
alias gst='git status'

alias l='exa'
alias ll='exa -al'
alias la='exa -a'
alias l.='exa -d .*'

alias nv='nvim'
alias nvrc='nvim ~/.config/nvim/init.vim'

# package management
alias pcl='sudo apt autoremove && sudo apt autoclean'
alias pco='sudo nvim /etc/apt/sources.list'
alias pin='sudo apt install'
alias pli='apt list -a'
alias pre='sudo apt remove'
alias pup='sudo apt update && sudo apt upgrade'

# system files
alias als='nvim ~/.bash_aliases && source ~/.bash_aliases'
alias brc='nvim ~/.bashrc && source ~/.bashrc'
alias bpr='nvim ~/.bash_profile && source ~/.bash_profile'
alias edg='sudo nvim /etc/default/grub && sudo update-grub'
alias fst='sudo nvim /etc/fstab'
alias pro='nvim ~/.profile && source ~/.profile'

alias stpg='sudo -u postgres psql'

alias sv='/usr/bin/vim.basic'
alias svrc='sv ~/.SpaceVim.d/init.toml'
#alias vrc='vim ~/.SpaceVim.d/init.toml'
