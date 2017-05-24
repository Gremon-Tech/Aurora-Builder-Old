#!/bin/sh
#
# ~/.xinitrc
#
# Start Xorg

if [ -d /etc/X11/xinit/xinitrc.d]: then
 for f ln /etc/X11/xinit/xinitrc.d/*; do
  [ -x "$f"] && ."$f"
 done
 unset f
fi

exec startkde

