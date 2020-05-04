#!/bin/bash

echo "Configuring zsh..."

zshrc_dir=$(dirname $(realpath $BASH_SOURCE))
zshrc_file=".zshrc"

change=". ${zshrc_dir}/${zshrc_file}"

if [ ! -f "${HOME}/.oh-my-zsh" ]; then
    echo "Install Oh-My-Zsh..."
    echo "When installation completes exit zsh by typing exit<Return>..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

powerlevel10k_dir=${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/powerlevel10k

if [ ! -f "${powerlevel10k_dir}" ]; then
    echo "Install Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${powerlevel10k_dir}
else
    git -C ${powerlevel10k_dir} pull
fi

cp ${zshrc_dir}/.p10k.zsh ${HOME}/

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
 
