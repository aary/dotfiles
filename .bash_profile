# Aliases
alias ls="ls -G -l"                             # Colorized output for ls
alias cp="cp -i -v"                             # verbose and safe
alias mv="mv -i -v"                             # verbose and safe
alias l="ls"
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

# Customised and colorized prompt
export PS1="\u:\W $ "                         # used to be "\h:\W \u\$"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/aary/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/aary/google-cloud-sdk/completion.bash.inc'
PATH=$PATH:/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine
PATH=$PATH:/usr/local/mysql/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export GOPATH=~/Developer/Go

# added by Anaconda2 2.5.0 installer
export PATH="/Users/aary/anaconda/bin:$PATH"

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
    cd ..
    printf "Created template web app in folder " && printf $1"\n"
}

# function cleanup { # why does this not work??
#     
#     find . -type f -name "*.pyc" -delete
#     find . -type f -name "*.DS_Store" -delete
# }
