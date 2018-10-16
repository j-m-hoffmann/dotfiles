# ~/.bash_profile

PATH=$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin
PATH=$PATH:$HOME/prog/go/bin
PATH=$PATH:$HOME/.cargo/bin
#PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin

export GOPATH="$HOME/prog/go"

# shellcheck source=/home/user/.bashrc
# added by Nix installer
#[[ -f ~/.bashrc ]] && . ~/.bashrc
#if [ -e /home/user/.nix-profile/etc/profile.d/nix.sh ]; then 
#  . /home/user/.nix-profile/etc/profile.d/nix.sh; 
#fi

# OPAM configuration
. /home/user/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
