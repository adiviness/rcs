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

# prevent X from sleeping the monitor
setterm -blank 0 -powersave off -powerdown 0
xset s off
xset -dpms

# source Xresources
#xrdb -merge ~/.Xresources
#xrdb -merge ~/.Xdefaults TODO

# add extra fonts to X
#xset +fp /usr/share/fonts/local
#xset fp rehash

# set key repeat rate
xset r rate 300 25

# load random wallpaper
#$HOME/bin/randomWallpaper.sh
# begin running status information
status-ino
# apply xmodmap for keys
#sh -c 'sleep 4s; xmodmap ~/.Xmodmap' &

# set left pointer cursor
xsetroot -cursor_name left_ptr

# set colemak key layout
setxkbmap us -variant colemak

# for xmonad only, set tray 
#trayer --edge top --align right --SetDocType true --SetPartialStrut true \
#    --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

# set term env var
export TERM=xterm-256color

urxvtd -q -o -f

#emacs --daemon 

#xmodmap ~/.Xmodmap 
#exec dwm
#export DEFAULT_SESSION=xmonad
#exec $HOME/.cabal/bin/xmonad
exec $1

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
