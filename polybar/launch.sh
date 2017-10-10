#!/usr/bin/env sh
# clean start for polybar used in xinitrc

# terminate all polybar processes
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch
polybar example &
