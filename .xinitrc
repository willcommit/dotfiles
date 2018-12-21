#!/bin/sh
xrandr --output HDMI1 --auto --left-of HDMI2

setxkbmap -model 105 -layout se,us -variant nodeadkeys, -option caps:escape,grp:win_space_toggle,altwin:prtsc_rwin

#[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

exec i3
