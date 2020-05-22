# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

alias s="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sl"
alias sa="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sn"
alias c="clear"
plugins=(zsh-navigation-tools)

export TERM=screen-256color
export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"
export EDITOR="vim"

#
# Powerline theme configs
POWERLINE_RIGHT_A="date"
POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_USER_NAME="true"
POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_GIT_CLEAN="😇"
POWERLINE_GIT_DIRTY="👻"
POWERLINE_GIT_ADDED="🤑§"
POWERLINE_GIT_MODIFIED="😍"
POWERLINE_GIT_DELETED="☠️"
POWERLINE_GIT_UNTRACKED="🤡"
POWERLINE_GIT_RENAMED="🤖"
POWERLINE_GIT_UNMERGED="👿"
POWERLINE_PATH="short"

source $ZSH/oh-my-zsh.sh

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=/usr/local/bin:/sbin:$PATH:$GOROOT/bin:$GOPATH/bin

alias redapi='cd ~/go/src/source.xing.com/e-recruiting-api-team/api/'
alias gc='git commit -m'
alias gst='git status'
alias gco='git checkout'
alias gss='git stash save'
alias gsp='git stash pop'
alias gp='git push'
alias gpf='git push --force'
alias gitlog="git log --oneline --decorate --summary --author andrei --no-merges"
alias v='vagrant'
alias t="ctags --extra=+f --exclude=.git --exclude=log --exclude=tmp --exclude=node_modules -R * "
alias start="mux start xrm"
alias stop="mux stop xrm"
alias k="kubectl"
alias kgp="kubectl get pods"

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
