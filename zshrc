# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

alias s="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sl"
alias sa="find . -type d \( -name log -o -name tmp \) -prune -o -print | xargs grep -sn"
alias t="ctags --extra=+f --exclude=.git --exclude=log -R * \`rvm gemdir\`/gems/*"
alias gitlog="git log --oneline --decorate --summary --author andrei --no-merges"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails rvm nyan lol)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export JAVA_HOME=/usr/lib/jvm/java-6-oracle
export JRUBY_OPTS=--1.9