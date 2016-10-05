# Make symlinks to all the relevant things in this directory
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vim ~/.vim

# now reinitialize the shell with the new settings
source ~/.bash_profile
