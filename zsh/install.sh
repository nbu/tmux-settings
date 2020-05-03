#!/bin/bash

echo "Configuring zsh..."

zshrc_dir=$(dirname $(realpath $BASH_SOURCE))
zshrc_file=".zshrc"

change=". ${zshrc_dir}/${zshrc_file}"
grep -q "Configuration provided by nbu/linux-settings" ~/${zshrc_file}
res=$?

if [ ${res} -eq 1 ]; then
    echo >> ~/${zshrc_file}
    echo "# Configuration provided by nbu/linux-settings" >> ~/${zshrc_file}
    echo "export NBU_LINUX_SETTINGS=$(realpath ${zshrc_dir}/..)" >> ~/${zshrc_file}
    echo "source ${zshrc_dir}/${zshrc_file}" >> ~/${zshrc_file}
    echo "# End of configuration provided by nbu/linux-settings" >> ~/${zshrc_file}
    echo >> ~/${zshrc_file}
fi
 
