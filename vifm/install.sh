#!/bin/bash

custom_conf_dir=$(dirname $(realpath $BASH_SOURCE))
origin_conf_dir="${HOME}/.vifm"
conf_file="vifmrc"

echo "Install VIFM (need sudo access)..."
sudo apt install vifm

echo "Configuring VIFM..."
mkdir -p ${origin_conf_dir}
if [ -f ${origin_conf_dif}/${conf_file} ]; then
    mv ${origin_conf_dir}/${conf_file} ${origin_conf_dir}/${conf_file}.bak
fi
touch ~/${confi_file}
echo "source ${custom_conf_dir}/${conf_file}" > ${origin_conf_dir}/${conf_file}

