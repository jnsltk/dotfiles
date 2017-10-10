export ZSH=/home/aro/.oh-my-zsh
ZSH_THEME="agnoster"

export TERM="screen-256color"
setopt interactivecomments

# auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
DEFAULT_USER='aro'
