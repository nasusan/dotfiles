# dotfiles

# todo
sudo apt-get update

# git
sudo apt-get install git

# dotfiles
cd
git clone https://github.com/nasusan/dotfiles.git
cd dotfiles
./setup.sh

# vim-gnone
sudo apt-get install -y vim-gnome

# C++
sudo apt-get install clang

# ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"'
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile 
rbenv --version
rbenv install --list
rbenv install 2.5.0
rbenv global 2.5.0
