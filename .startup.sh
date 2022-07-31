#!/usr/bin/env bash

set -x  # for debugging

$HOME/.screenlayout/default.sh # Set the screen layout
xrdb $HOME/.Xdefaults          # set up xdefaults for urxvt and st
xmodmap $HOME/.xmodmap         # swap ctr and caps

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

wpscript="$HOME/Pictures/Wallpaper/CURRENT_LIST/wpscript"

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
