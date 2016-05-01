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
xrdb -merge ~/.Xresources
#source .profile
 exec gnome-session
# exec startkde
 #exec startxfce4
 #exec subtle -l ruby,subtlext
# exec /home/thierry/Téléchargements/subtle-hg/src/subtle/subtle &>/home/thierry/subtle-$(date +"%F-%H-%M").log #-l ruby,subtlext
# ...or the Window Manager of your choice
