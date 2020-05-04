ZSH_THEME="powerlevel10k/powerlevel1"

plugins=(git tmux ubuntu z)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ${NBU_LINUX_SETTINGS}/shared/.alias

