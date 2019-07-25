#!/bin/bash
SCREEN=`xrandr | grep " connected" | awk '{print$1 }'`
STEP=0.1
current_brightness=`xrandr --verbose | awk '/Brightness/ { print $2; exit }'`

if [[ $1 == '+' && $current_brightness < 1.0 ]];
then
    new_brightness=$( bc <<< "$current_brightness + $STEP" )
    xrandr --output $SCREEN --brightness $new_brightness
elif [[ $1 == '-' && current_brightness > 0.1 ]];
then
    new_brightness=$( bc <<< "$current_brightness - $STEP" )
    xrandr --output $SCREEN --brightness $new_brightness
elif [[ $1 > 0.0 && $1 < 1.1 ]];
then 
    xrandr --output $SCREEN --brightness $1
else 
    echo "You insert a wrong value or the brightness is already at its minimum or maximum."
    echo "Insert a correct value (for more info see the wiki here: https://github.com/xFabifont/brightness-controller/tree/master)"
fi
