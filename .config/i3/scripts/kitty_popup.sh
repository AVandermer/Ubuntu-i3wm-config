#!/bin/bash

CLASS="kitty-popup"

if pgrep -f "kitty --class $CLASS" > /dev/null; then
   
    i3-msg "[class=\"$CLASS\"] scratchpad show, move position center"
else
   
    kitty --class "$CLASS" -o background_opacity=0.85 &
    
    sleep 0.1
    i3-msg "[class=\"$CLASS\"] move position center"
fi
