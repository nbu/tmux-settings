#!/bin/bash

echo "Installing fonts..."

fonts_dir="${HOME}/.fonts"

isUbuntu
ubuntu=$?

if [ $ubuntu -eq 1 ]; then
    echo "Warning, OS is not supported. Install fonts manually."
    echo "Inconsolata Nerd Font Complete - https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete.otf"
    echo "MesloLGS NF Regular - https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf"
    return 0
fi;

declare -A fonts
fonts=(
    ["Inconsolata Nerd Font Complete.otf"]="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete.otf"
    ["MesloLGS NF Regular.ttf"]="https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf"
)

mkdir -p ${fonts_dir}

for font in "${!fonts[@]}"
do
    wget -O "${fonts_dir}/${font}" ${fonts[$font]}
done

