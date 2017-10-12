# .bashrc of jltk

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/git-prompt.sh
#export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

# using git-prompt.sh
# if wanna use colors in PS1 gotta contain them in \[ \] brackets
PS1="\w\$(__git_ps1 ' [%s]') $ "
# show name of current folder in window title
PROMPT_COMMAND='echo -ne "\033]0;$(basename ${PWD})\007"'
# show name of opened program in window title
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

# check window sizes after command
shopt -s checkwinsize

# call aliases file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# function aliases

# streams
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
