#!/bin/bash

echo "Configuring bash..."

bashrc_dir=$(dirname $(realpath $BASH_SOURCE))
bashrc_file=".bashrc"

change=". ${bashrc_dir}/${bashrc_file}"
grep -q "Configuration provided by nbu/linux-settings" ~/${bashrc_file}
res=$?

if [ ${res} -eq 1 ]; then
    echo >> ~/${bashrc_file}
    echo "# Configuration provided by nbu/linux-settings" >> ~/${bashrc_file}
    echo "export NBU_LINUX_SETTINGS=$(realpath ${bashrc_dir}/..)" >> ~/${bashrc_file}
    echo ". ${bashrc_dir}/${bashrc_file}" >> ~/${bashrc_file}
    echo "# End of configuration provided by nbu/linux-settings" >> ~/${bashrc_file}
    echo >> ~/${bashrc_file}
fi
 
