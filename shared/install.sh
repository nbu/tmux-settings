#!/bin/bash

echo $PWD/$(dirname $BASH_SOURCE)/
. $(dirname $BASH_SOURCE)/../utils.sh

pip install pyyaml

isUbuntu
ubuntu=$?
isOSX
osx=$?


if [ $ubuntu -eq 0 ]; then
    echo "Install ncdu, htop, tldr, jq (need sudo access)..."
    sudo apt install ncdu htop tldr jq
elif [ $osx -eq 0 ]; then
    echo "Install ncdu, htp, ltdr, jq..."
    brew install ncdu htop tldr jq
else
    echo "Warning, OS is not supported. Be sure zsh is installed"
fi

