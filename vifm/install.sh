#!/bin/bash

custom_conf_dir=$(dirname $(realpath $BASH_SOURCE))
origin_conf_dir="${HOME}/.config/vifm"
conf_file="vifmrc"

echo "Install VIFM (need sudo access)..."
sudo apt install vifm

echo "Configuring VIFM"
mv ${origin_conf_dir}/${conf_file} ${origin_conf_dir}/${conf_file}.back
touch ~/${confi_file}
echo "source ${custom_conf_dir}/${conf_file}" > ${origin_conf_dir}/${conf_file}

