export ZSH=/home/aro/.oh-my-zsh
ZSH_THEME="agnoster"

export TERM="screen-256color"
setopt interactivecomments

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
DEFAULT_USER='aro'
