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
alias be="bundle exec"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
rr() {
  if [[ -n $1 ]]
  then
    rake routes | grep $1
  else
    rake routes
  fi
}

# Heroku aliases
hrc() {
  if [[ -n $1 ]]
  then
    if [[ $1 == "production" || $1 == "demo" ]]; then
      echo "You're about to enter a console on demo or production. Do you want to continue? (y/n)"
      vared -c user_input

      if [[ $user_input != "y" ]]; then
        return 1
      fi

    fi
    heroku run console --remote $1
  else
    echo "You need to pass in a remote"
  fi
}


# Startup aliases
alias phoenix="cd ~/Documents/Gladi8/DocFox/phoenix"
alias docr="cd ~/Documents/Gladi8/DocFox/docfox-ocr"

# Decorate the prompt
export PS1="\e[0;32m\u:\e[m\e[1;31m \w\e[m\e[0;34m\$(__git_ps1)\e[m: "

# For rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# For Postgres
export PGDATA=/usr/local/var/postgres

[ -s "/Users/gregorymeyer/.dnx/dnvm/dnvm.sh" ] && . "/Users/gregorymeyer/.dnx/dnvm/dnvm.sh" # Load dnvm

