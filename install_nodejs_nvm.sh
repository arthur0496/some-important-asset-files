#!/bin/bash

echo "checking nvm..."
if ! nvm --version
then
  echo "installing nvm..."
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
  source ./$HOME/.bashrc
  echo "nvm install complete!"
fi

if ! nvm install v7.10.1
then
  echo "node install error..."
  echo "aborting..."
  exit 1
fi

nvm alias default v7.10.1
nvm use default
