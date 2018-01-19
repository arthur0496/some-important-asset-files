#!/bin/bash

echo "installing rbenv..."
git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bashrc

source $HOME/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

source $HOME/.bashrc
rbenv rehash

apt-get update
apt-get install -y libssl-dev libreadline-dev zlib1g-dev

rbenv install 2.4.2
rbenv global 2.4.2

gem update --system

gem install bundler
rbenv rehash
bundle -v

gem install rails
rbenv rehash
rails -v

apt-get install libsqlite3-dev
