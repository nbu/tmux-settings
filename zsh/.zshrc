ZSH_THEME="powerlevel10k/powerlevel10k"
export FZF_BASE=~/.fzf

plugins=(git tmux tmuxinator ubuntu z zsh-autosuggestions nvm fzf kubectl)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ${NBU_LINUX_SETTINGS}/shared/.alias
source ${NBU_LINUX_SETTINGS}/shared/.env

# https://www.linuxjournal.com/content/boost-productivity-bash-tips-and-tricks
generateqr() {
    printf "$@" | curl -F-=\<- qrenco.de
}

