#!/bin/bash

custom_conf_dir=$(dirname $(realpath $BASH_SOURCE))
origin_conf_dir="${HOME}/.vifm"
conf_file="vifmrc"

isUbuntu
ubuntu=$?

if [ $ubuntu -eq 1 ]; then
    echo "Install VIFM (need sudo access)..."
    sudo apt install vifm
else
    echo "Warning, OS is not supported. Be sure VIFM is installed"
fi;

echo "Configuring VIFM..."
mkdir -p ${origin_conf_dir}
if [ -f ${origin_conf_dif}/${conf_file} ]; then
    mv ${origin_conf_dir}/${conf_file} ${origin_conf_dir}/${conf_file}.bak
fi
touch ~/${confi_file}
echo "source ${custom_conf_dir}/${conf_file}" > ${origin_conf_dir}/${conf_file}
cp zenburn_1 ${origin_conf_dir}/colors
