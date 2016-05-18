# Useful aliases
alias c="clear"
alias cdir="pwd | pbcopy"
alias pdir="cd `pbpaste`"
alias la="ls -a"
alias ll="ls -l"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Git aliases
alias git="hub" # delegate the hub plugin installed via Brew
alias this_branch='git symbolic-ref HEAD --short'
alias gst="git status"
alias gcm="git commit -m"
alias gl="git log --oneline"
alias gf="git fetch"
alias gd="git diff"
alias ga="git add"
alias gamend="git commit --amend -m"
alias gps="git push"
alias gpl="git pull"
alias gco="git checkout"
alias gdb="git branch -D"
alias gnb="git co -b"
alias gbs="git branch"
alias gacm="git add . && git commit -m"


# Gian's aliases
alias gs="git status"
alias frocomb="rake"

# Vim aliases
alias v="vim"

# Rails aliases
alias bust="bundle install"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

# Startup aliases
alias phoenix="cd ~/Documents/Gladi8/DocFox/phoenix"

# To show the git branch in the prompt
source ~/.git-prompt.sh

# To enable git auto-complete
source ~/.git-autocomplete.bash

# Decorate the prompt
export PS1="\e[0;32m\u:\e[m\e[1;31m \w\e[m\e[0;34m\$(__git_ps1)\e[m: "

# Enable git auto-complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  __git_complete gst __git_status
  __git_complete gco _git_checkout
  __git_complete gpl _git_pull
  __git_complete gps _git_push
  __git_complete ga _git_add
fi

# For rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# For Postgres
export PGDATA=/usr/local/var/postgres

[ -s "/Users/gregorymeyer/.dnx/dnvm/dnvm.sh" ] && . "/Users/gregorymeyer/.dnx/dnvm/dnvm.sh" # Load dnvm

# For the pairing gem
pair() {
       	command pair "$@"
	if [[ -s "$HOME/.pair-up_export_authors" ]] ; then source "$HOME/.pair-up_export_authors" ; fi
  }
pair

