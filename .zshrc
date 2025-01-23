# Useful aliases
alias c="clear"
alias cdir="pwd | pbcopy"
alias pdir="cd `pbpaste`"
alias la="ls -a"
alias ll="ls -l"
alias python="python3"


# Vim aliases
alias v="vim"


# Decorate the prompt
# export PS1="\e[0;32m\u:\e[m\e[1;31m \w\e[m\e[0;34m\$(__git_ps1)\e[m: "
export PS1='%F{green}%n%f%F{red}:~$%f '
