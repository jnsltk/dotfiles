# ---------------
# .bash_aliases
# ---------------

# GIF screen record
alias screengif='byzanz-record -d 10 ~/Bilder/deskutop.gif'
 
# Scrot
#alias scrot='scrot ~/scrot_%b%d-%H%M%S.png"'
 
# Restart Wifi
alias recinet='sudo service network-manager restart; echo -e "└ Restarted Network Manager \e[31mService\e[0m | "'
 
# Webcam snapshot
alias camsnapshot='streamer -f jpeg -o camsnapshot.jpeg; echo -e "└ Took snapshot to \e[31m/home/su1ts/\e[0m | "'
 
# Screen brightness
alias daymode='xrandr -q | grep " connected";xrandr --output LVDS1 --brightness 1; echo -e "└ Set screen brightness to \e[31m100%\e[0m"'
alias nightmode='xrandr -q | grep " connected";xrandr --output LVDS1 --brightness 0.55; echo -e "└ Set screen brightness to \e[31m55%\e[0m"'
 
# System administrator
alias god='sudo -i'
alias root='sudo -i'
 
# Network
alias ping1='ping -c 4 www.google.com'
alias ping2='ping -c 4 192.168.2.1'
alias nmapnet='sudo nmap -sP 192.168.2.0/24'
 
# Upgrade/update
alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove'
 
# ls
alias ll='ls -alh'
alias la='ls -A'
 
# Nano editor
alias nano='nano -w'
 
# Disk free in human terms
alias df='df -h'

# TTY-clock
alias tty-clock='tty-clock -s -S -b -c -C 7 -t'
alias clock='tty-clock -s -S -b -c -C 2 -t'

# Others 
alias cls='clear'
alias gay='toilet -f mono12 --gay'
alias alittlegay='toilet -f mono9 --gay'
alias metal='toilet -f mono9 --metal'
alias dots='pipes -t 2'

# Downloading
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
 
# Moving directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
 
# Shutdown
alias shutd='sudo shutdown -P now'
alias shutr='sudo shutdown -r now'
 
# Keys
alias aptkey='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys'
alias aptkey2='sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys'
