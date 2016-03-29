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
alias curl="curl -i -w '\n'"                    # add new line and headers
alias tree="tree -C -I 'venv'"
alias cleanup="bash ~/.clean_up_files; clear"
alias college="cd ~/Documents/UofM/Winter\ 2016"
alias caen="ssh aary@login.engin.umich.edu"
alias caensftp="sftp aary@login.engin.umich.edu"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias fish="/usr/local/bin/fish"
alias v="view"
alias t="tmux"
alias c="cl"
alias developer="cd ~/Developer"
alias desktop="cd ~/Desktop"
alias reinit="source ~/.bash_profile"
alias gitlistfiles="git ls-tree -r master --name-only"

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
