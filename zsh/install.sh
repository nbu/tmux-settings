#!/bin/bash

echo "Configuring zsh..."

zshrc_dir=$(dirname $(realpath $BASH_SOURCE))
zshrc_file=".zshrc"

change=". ${zshrc_dir}/${zshrc_file}"

echo "Install Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install Powerlevel10k..."

set -e
grep -q "Configuration provided by nbu/linux-settings" ~/${zshrc_file}
res=$?
set +e

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

if [ ${res} -eq 1 ]; then
    echo >> ~/${zshrc_file}
    echo "# Configuration provided by nbu/linux-settings" >> ~/${zshrc_file}
    echo "export NBU_LINUX_SETTINGS=$(realpath ${zshrc_dir}/..)" >> ~/${zshrc_file}
    echo "source ${zshrc_dir}/${zshrc_file}" >> ~/${zshrc_file}
    echo "# End of configuration provided by nbu/linux-settings" >> ~/${zshrc_file}
    echo >> ~/${zshrc_file}
fi
 
