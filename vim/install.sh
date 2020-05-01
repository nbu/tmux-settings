#!/bin/bash

echo "Configuring VIM..."

vimrc_dir=$(PWD)/$(dirname $BASH_SOURCE)
vimrc_file=".vimrc"

# Configure plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Configure vim
mv ~/${vimrc_file} ~/${vimrc_file}.bak
touch ~/${vimrc_file}
echo "source ${vimrc_dir}/${vimrc_file}" > ~/${vimrc_file}

