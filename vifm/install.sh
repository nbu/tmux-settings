#!/bin/bash

. $(dirname $BASH_SOURCE)/../utils.sh

custom_conf_dir=$(dirname $(realpath $BASH_SOURCE))
origin_conf_dir="${HOME}/.config/vifm"
conf_file="vifmrc"

isUbuntu
ubuntu=$?

if [ $ubuntu -eq 0 ]; then
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
touch ${origin_conf_dir}/${conf_file}
echo "source ${custom_conf_dir}/${conf_file}" > ${origin_conf_dir}/${conf_file}
mkdir -p ${origin_conf_dir}/colors
cp ${custom_conf_dir}/zenburn_1.vifm ${origin_conf_dir}/colors
