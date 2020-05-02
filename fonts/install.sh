#!/bin/bash

echo "Installing fonts..."

fonts_dir="/usr/local/share/fonts"

declare -A fonts
fonts=(
    ["Inconsolata Nerd Font Complete.otf"]="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete.otf"
    ["MesloLGS NF Regular.ttf"]="https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf"
)

install_fonts() {
    for font in "${!fonts[@]}"
    do
        sudo wget -O "${fonts_dir}/${font}" ${fonts[$font]}
    done
}

echo "Need sudo access to install fonts. Continue (c) or skip (s)?"
select cs in "c" "s"; do
    case $cs in
        c ) install_fonts; break;;
        s ) break;;
    esac
done

