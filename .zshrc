# If you're installing this on a Mac, you need to symlink to this file like so: ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
# On mac, you can't use the ~ in symlinks; you need to explicitly reference the directory. See this URL for more: https://stackoverflow.com/questions/17936335/symlink-zshrc
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
export PS1='%F{green}%n%f%F{red} %1d:~$%f '
eval "$(mise activate bash)"

# git aliases
alias gst="git status"
