#!/bin/bash

echo "Installing fonts..."

fonts_dir="${HOME}/.fonts"

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

