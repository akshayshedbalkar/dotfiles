### If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Git branch in prompt and autocompletion
source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash
PS1='\n[\[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\]] \[\e[1;31m\]$(__git_ps1)\[\e[m\] \$ '

### Environment variables
## Common
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/tools/scripts/bash:$HOME/.local/bin
export XDG_RUNTIME_DIR='/tmp/runtime-ashed'
export FZF_DEFAULT_COMMAND="rg --files -i"
export EDITOR="nvim"
export VISUAL="nvim"
## WSL2 specific
export host_ip=$(awk '/nameserver/ {print $2}' /etc/resolv.conf)
export http_proxy="http://${host_ip}:3128"
export https_proxy="http://${host_ip}:3128"
export all_proxy="http://${host_ip}:3128"
export DISPLAY="${host_ip}:0"

### Aliases
##Common
alias ls='ls --color=auto'
alias l='ls -lhFB --color=none --group-directories-first'
alias ll='ls -alhFB --color=none --group-directories-first'
alias ..='cd ..'
alias log="git log --pretty=format:'%C(red)%h%Creset %C(auto)%d%Creset %s %C(green)(%ar) %C(bold blue)<%an>%Creset'"
alias logg="git log --all --pretty=format:'%C(red)%h%Creset %C(auto)%d%Creset %s %C(green)(%ar) %C(bold blue)<%an>%Creset'"
alias tag="git tag --sort=creatordate | grep -v build"
alias vi='nvim'
alias vimdiff='nvim -d'
alias v='nvim ~/.config/nvim/init.vim'
alias V='vim ~/.vim/dotfiles/.vimrc'
alias b='nvim ~/.vim/dotfiles/.bashrc'
#Project specific
alias fpm2='cd ~/docs/fpm2_development'
alias int='cd ~/docs/Integration'
alias desktop='cd /mnt/c/Users/SW5VXVD/Desktop'

### Functions
. ~/.vim/bash_scripts/bash_scripts.sh









