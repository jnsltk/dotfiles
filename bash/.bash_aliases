# bash aliases of jltk
# alias functions are in .bashrc file

# moving
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

# showing
alias ll='ls -alh'
alias la='ls -A'
alias ls='ls --color=auto'

# cleaning
alias cls='clear'
alias re='reset'

# searching
alias searchp='xbps-query -Rs'

# downloading
alias ytmp3='youtube-dl --ignore-config -x -o "~/music/%(title)s.%(ext)s" --audio-format mp3'
alias yt360p='youtube-dl --format 134+140'

# recording
alias screenrecord='recordmydesktop --no-cursor --fps 24 --no-sound -o screenrecord'

# shortcuts to run own scripts that are in constant development
alias pyt='cd ~/scripts/ytscraper; python2 ytscraper.py;'
alias notes='cd ~/scripts/notes; python notes.py;'

# fun
alias gay='toilet -f mono12 --gay'
alias alittlegay='toilet -f future --gay'
alias metal='toilet -f mono9 --metal'

# connecting
alias gitdocspull='git pull ssh://git@ssh.rp.de/home/rp/docs.git'
