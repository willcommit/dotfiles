#!/bin/sh

setxkbmap -model 105 -layout us,se -variant nodeadkeys, -option caps:escape,grp:win_space_toggle,altwin:prtsc_rwin

exec i3
