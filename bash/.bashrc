# .bashrc by suits

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "'

# check window sizes after command
shopt -s checkwinsize

# call aliases file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# function aliases
# https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions

# video media
twitch () { mpv --ytdl-format=$1 https://twitch.tv/$2 & }

# git
gitpush () {
    sleep 1 && echo "Adding all changed files."
    git add .
    sleep 1 && echo "Committing with given message."
    git commit -m "$1"
    sleep 1 && echo "Pushing to set remote origin (branch: master)."
    git push origin master
}
