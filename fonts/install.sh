#!/bin/bash

. $(dirname $BASH_SOURCE)/../utils.sh

echo "Installing fonts..."

fonts_dir="${HOME}/.fonts"

isUbuntu
ubuntu=$?
isMint
mint=$?

if [ $ubuntu -eq 0 ] || [ $mint -eq 0 ]; then
    echo "Warning, OS is not supported. Install fonts manually:"
    echo "Droid Sans Mono Nerd Font Complete - https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Windows%20Compatible.otf"
    echo "Inconsolata LGC Nerd Font Complete - https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/InconsolataLGC/Regular/complete/Inconsolata%20LGC%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf"
    echo "MesloLGS NF Regular - https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf"
    return 0
fi;

declare -A fonts
fonts=(
    ["Droid Sans Mono Nerd Font Complete Windows Compatible.otf"]="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Windows%20Compatible.otf"
    ["Inconsolata LGC Nerd Font Complete Windows Compatible.otf"]="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/InconsolataLGC/Regular/complete/Inconsolata%20LGC%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf"
    ["MesloLGS NF Regular.ttf"]="https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf"
)

mkdir -p ${fonts_dir}

for font in "${!fonts[@]}"
do
    wget -O "${fonts_dir}/${font}" ${fonts[$font]}
done

