# Make symlinks to all the relevant things in this directory
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vim ~/.vim

# make an empty .bash_local file to put all your configurations
touch ~/.bash_local
echo "# Put all your local configurations in this file" >> ~/.bash_local
echo "# ~/.bash_profile and ~/.bashrc are linked to the " >> ~/.bash_local
echo "# repository you cloned" >> ~/.bash_local

# now reinitialize the shell with the new settings
source ~/.bash_profile

