# Config

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# virtualenvwrapper
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.6
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Fix home and end
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# thefuck
eval $(thefuck --alias fuck)

# Load prompt sys
autoload -U promptinit; promptinit
prompt pure

#----------------------------------------
# Antigen
#----------------------------------------
source $HOME/antigen.zsh

# antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    git
    tmux
    command-not-found
    colored-man-pages
    heroku
    mafredri/zsh-async
    sindresorhus/pure
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    djui/alias-tips
    Seinh/git-prune
    wbinglee/zsh-wakatime
EOBUNDLES

antigen apply

#----------------------------------------
# Functions
#----------------------------------------
#

# copy SSH key to clipboard
function myssh() {
  if pbcopy < ~/.ssh/id_rsa.pub ; then
    echo '🔑  → 📋  ssh key copied to clipboard!'
  else
    echo '😩  something went wrong!'
  fi
}

# make new dir and cd into it
function take() {
  mkdir -p $1; cd $1;
}

# update errthang
function run-updates() {
  brew update; echo '🍻  Homebrew updated  🍻'; npm update -g; echo '📦  npm packages updated  📦'; sudo softwareupdate -ir; echo '💻  recommended mac software updated  💻';
}

#----------------------------------------
# Exports
#----------------------------------------
#
alias vi="vim"
export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#----------------------------------------
# Aliases
#----------------------------------------
#
alias tk='take'
alias reload="source ~/.zshrc"

# dirs
# alias seedling="cd ~/dev/boilerplates/seedling"
# alias dev="cd ~/dev"

# cd shortcuts
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"

#
# basics
#
alias md="mkdir"
alias t="touch"
alias x="exit"
alias c="clear"
alias o="open ."
alias v="vim"
alias x+="chmod +x"
alias bye="sudo shutdown"
alias get="curl -O -L"

alias clean_ds="find . -name '*.DS_Store' -type f -ls -delete"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# lock scren when going afk
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
# sshh
# alias stfu="osascript -e 'set volume output muted true'"

# coreutils
# alias ls="gls --color"
# alias lsa="gls -a --color"
# alias lsd='gls -l --color | ggrep "^d" --color' # dirs only
# alias awk="gawk"
# alias grep="ggrep --color"
# alias mv="gmv -v"
# alias rm="grm -v"
# alias cp="gcp -v"
# alias cat="gcat"
# alias printf="gprintf"
# alias tail="gtail"
# alias sort="gsort"
# alias split="gsplit"

# apps
# alias chrome="open -a \"Google Chrome\""
# alias sketch="open -a \"Sketch\""
# alias slack="open -a Slack"

# yarn
alias y="yarn"
alias yi="yarn init"
alias ya="yarn add"
alias yr="yarn run"
alias yrm="yarn remove"
alias yu="yarn upgrade"
alias yc="yarn clean"
alias ych="yarn check"

# npm
alias n="npm"
alias ni="npm i"
alias nu="npm uninstall"
alias np="npm update"
alias ng="npm upgrade"
alias nr="npm run"
alias nd="npm dedupe"
alias npr="npm prune"

# Git
alias g="git"

alias ga="git add"
alias gaa="git add ."
alias gra="git remote add "

alias gb="git branch"
alias gbd="git branch -d"

alias gch="git checkout"
alias gcb="git checkout -b"

alias gcp="git cherry-pick"

alias gcl="git clone"

alias gc="git commit -m"

alias gd="git diff"
alias gdt="git difftool"

alias gpl="git pull origin"

alias gp="git push"
alias gpu="git push -u origin"

alias gre="git rebase"

alias gst="git stash"
alias gsa="git stash apply"
alias gsd="git stash drop"

###########################

cd Workspace