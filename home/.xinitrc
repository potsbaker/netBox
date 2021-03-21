#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
 
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
 
export LANG=en_US.UTF-8
export LC_CTYPE="$LANG"
export LC_ALL=""
 
xrdb -merge ~/.Xresources && setxkbmap us -variant colemak
xrandr --output default --mode 1680x1050 --rate 144.00
xset b off && feh --bg-fill "/home/${USER}/pix/walls/wall.jpg"
 
exec spectrwm
