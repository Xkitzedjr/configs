#!/usr/bin/env bash

set -x  # for debugging

/home/chris/.screenlayout/default.sh # Set the screen layout
xrdb /home/chris/.Xdefaults          # set up xdefaults for urxvt and st
xmodmap /home/chris/.xmodmap         # swap ctr and caps

# All my start up programs
declare -a StartupProggies=("picom" "nm-applet" "volumeicon")

for proggy in "${StartupProggies[@]}" ; do
    if pgrep -x "$proggy"
    then
        continue
    else
        $proggy&
    fi
done

wpscript="/home/chris/Pictures/Wallpaper/CURRENT_LIST/wpscript"

if pgrep -x wpscript; then
    killall wpscript
    $wpscript&
else
    $wpscript&
fi

if pgrep -x emacs; then
    echo
else
    emacs --daemon&
fi
