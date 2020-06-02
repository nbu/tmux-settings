ZSH_THEME="powerlevel10k/powerlevel10k"
export FZF_BASE=~/.fzf

plugins=(git tmux ubuntu z zsh-autosuggestions nvm fzf)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ${NBU_LINUX_SETTINGS}/shared/.alias

