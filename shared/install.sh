#!/bin/bash

echo $PWD/$(dirname $BASH_SOURCE)/
. $(dirname $BASH_SOURCE)/../utils.sh

isUbuntu
ubuntu=$?
isMint
mint=$?
isOSX
osx=$?

if [ $ubuntu -eq 0 ] || [ $mint -eq 0 ]; then
    echo "Install ncdu, htop, tldr, jq, python3, python3-pip, tmux, vim (need sudo access)..."
    sudo apt install ncdu htop tldr jq python3 python3-pip tmux vim
elif [ $osx -eq 0 ]; then
    echo "Install ncdu, htp, ltdr, jq..."
    brew install ncdu htop tldr jq
else
    echo "Warning, OS is not supported. Be sure zsh is installed"
fi

pip install pyyaml
