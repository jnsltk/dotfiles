#░▒▓█ Aliases
#░▒▓█ Misc
alias cls='clear'
alias gay='toilet -f mono12 --gay'
alias alittlegay='toilet -f future --gay'
#░▒▓█ YouTube downloading
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias ytvid='youtube-dl -o "%(title)s.%(ext)s"'
alias yt720='youtube-dl -f 136+140'
#░▒▓█ Screen brightness
alias daymode='xrandr --output LVDS1 --brightness 1 && echo "Set display brightness to 100%"'
alias nitemode='xrandr --output LVDS1 --brightness .75 && echo "Set display brightness to 75%"'
#░▒▓█ VPN
alias vpn='sudo openvpn --config /etc/openvpn/Roosendaal/Roosendaal.ovpn'
alias vpnoff='sudo killall openvpn'
