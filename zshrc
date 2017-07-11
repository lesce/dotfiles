# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

alias s="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sl"
alias sa="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sn"
alias c="clear"
plugins=(git rails nyan zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"
export EDITOR="vim"

#
# Powerline theme configs
POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_USER_NAME="true"
POWERLINE_SHOW_GIT_ON_LEFT="true"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_GIT_CLEAN="🍒"
POWERLINE_GIT_DIRTY="🍆"
POWERLINE_GIT_ADDED="🍓"
POWERLINE_GIT_MODIFIED="🥒"
POWERLINE_GIT_DELETED="☠️"
POWERLINE_GIT_UNTRACKED="🥑"
POWERLINE_GIT_RENAMED="🍋"
POWERLINE_GIT_UNMERGED="🍍"
POWERLINE_PATH="short"

source $ZSH/oh-my-zsh.sh

alias gst='git status'
alias gco='git checkout'
alias gss='git stash save'
alias gsp='git stash pop'
alias gitlog="git log --oneline --decorate --summary --author andrei --no-merges"
alias v='vagrant'
alias t="ctags --extra=+f --exclude=.git --exclude=log --exclude=tmp --exclude=node_modules -R * "
alias start="mux start xrm"
alias stop="mux stop xrm"
alias xrmdb="PGPASSWORD=aipiqe psql -h localhost -d eqipia_development -p 5433 -U eqipia -W"
