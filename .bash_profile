# Aliases
alias cp="cp -i -v"                             # verbose and safe
alias mv="mv -i -v"                             # verbose and safe
alias l="ls -G -l"                              # colorized and long
alias sl="ls"
alias dc="cd"
alias sublime="open -a Sublime\ Text\ 3"        # sublime text
alias cl="clear"
alias lc="cl"
alias tree="tree -C -I 'venv'"
alias cleanup="find . -type f -iname \"*.pyc\" -delete"
alias college="cd ~/Documents/UofM/Fall\ 2016"
alias caen="ssh aary@login.engin.umich.edu"
alias caensftp="sftp aary@login.engin.umich.edu"
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

# UofM things
alias uofm="cd ~/Doc*/U*M"
alias eecs381="cd ~/Doc*/UofM/Fall\ 2016/*381*"
alias eecs388="cd ~/Doc*/UofM/Fall\ 2016/*388*"
alias eecs477="cd ~/Doc*/UofM/Fall\ 2016/*477*"
alias eecs373="cd ~/Doc*/UofM/Winter\ 2016/*373*"
alias eecs445="cd ~/Doc*/UofM/Winter\ 2016/*445*"
alias eecs482="cd ~/Doc*/UofM/Fall\ 2015/*482*/*Proj*"
alias eecs485="cd ~/Doc*/UofM/Fall\ 2015/*485*"
alias eecs270="cd ~/Doc*/UofM/Fall\ 2015/*270*"
alias eecs484="cd ~/Doc*/UofM/Winter\ 2015/*484*"
alias eecs370="cd ~/Doc*/UofM/Winter\ 2015/*370*"
alias eecs376="cd ~/Doc*/UofM/Winter\ 2015/*376*"
alias eecs281="cd ~/Doc*/UofM/Fall\ 2014/*281*"

# map g++ to g++ -std=c++11
alias g+++="g++ -std=c++14 -Wall -Werror -Wvla -Wextra -pedantic -O3"
alias gccc="gcc -std=c99 -Wall -Werror -Wvla -Wextra -pedantic -O3"

# map rr to reverse-i-search
bind '"RR":reverse-search-history'

# Customised and colorized prompt
export PS1="\u:\W $ "                         # used to be "\h:\W \u\$"

PATH=$PATH:/usr/local/mysql/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

function gitsubmoduleinit {

    git submodule init
    git submodule update
    git submodule foreach git pull origin master
}

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

