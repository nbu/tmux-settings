#!/bin/bash

custom_conf_dir=$(dirname $(realpath $BASH_SOURCE))
conf_file="vifmrc"

echo "Install VIFM (need sudo access)..."
sudo apt install vifm

echo "Configuring VIFM"
mv ~/${conf_file} ~/${conf_file}.back
touch ~/${confi_file}
echo "source ${custom_conf_dir}/${conf_file}" > ~/${conf_file}

