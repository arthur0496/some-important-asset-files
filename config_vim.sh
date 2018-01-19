#!/bin/bash

echo "fetching repo"
git clone https://gitlab.com/lappis-unb/tools/vim/lappis_vimrc.git $HOME/lappis_vimrc

./$HOME/lappis_vimrc/install.sh
