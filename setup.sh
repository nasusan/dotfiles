#!/bin/sh

# In advance
# sudo apt-get update
# sudo apt-get install git
# git clone https://github.com/nasusan/dotfiles.git

# backup old dotfiles
mkdir ~/dotfiles_backup
cp ~/.* ~/dotfiles_backup

# link to dotfiles
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# vim setting
# mkdir -p ~/.vim/colors
# copy twilight.vim

# ruby
# git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
# git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
# source ~/.bash_profile
# rbenv --version
