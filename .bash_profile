# Aliases
alias cp="cp -i -v"                             # verbose and safe
alias mv="mv -i -v"                             # verbose and safe
alias l="ls -G -l -F"                              # colorized and long
alias sl="ls"
alias dc="cd"
alias cl="clear"
alias lc="cl"
alias tree="tree -C -I 'venv'"
alias cleanup="find . -type f -iname \"*.pyc\" -delete"
alias desktop="cd ~/Desktop"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias fish="/usr/local/bin/fish"
alias v="view"
alias t="tmux"
alias c="cl"
alias developer="cd ~/Developer"
alias reinit="source ~/.bash_profile"
alias gitlistfiles="git ls-tree -r master --name-only"
alias movies="cd ~/Movies"
alias .="vim ."

# map g++ to g++ -std=c++11
alias g+++="g++ -std=c++14 -Wall -Werror -Wvla -Wextra -pedantic -O3"
alias gccc="gcc -std=c99 -Wall -Werror -Wvla -Wextra -pedantic -O3"

# Customised and colorized prompt
export PS1="\[$(tput bold)\]\u:\W\[$(tput sgr0)\] $ "

# creates a barebones flask js app
function flaskjs {
    mkdir $1
    cd $1
    cp -r ~/.templates/flaskjs/* ./ > /dev/null
    virtualenv .venv > /dev/null
    cd ..
    printf "Created template web app in folder " && printf $1"\n"
}

# function to create an alias in the .bash_profile
function calias {
    local cwd="$(pwd)"
    printf "alias "$1"=\"cd "$cwd"\"\n" >> ~/.bash_profile
    source ~/.bash_profile
    printf "Created an alias to "$cwd"\n"
}

source ~/.bash_local
