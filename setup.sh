# Make symlinks to all the relevant things in this directory
ln -sf $(pwd)/.bash_profile ~/.bash_profile
ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
ln -sf $(pwd)/.bashrc ~/.bashrc
ln -sf $(pwd)/.vim ~/.vim

# make an empty .bash_local file to put all your configurations
touch ~/.bash_local
echo "# Put all your local configurations in this file" >> ~/.bash_local
echo "# ~/.bash_profile and ~/.bashrc are linked to the " >> ~/.bash_local
echo "# repository you cloned" >> ~/.bash_local

# now reinitialize the shell with the new settings
source ~/.bash_profile

