#!/bin/bash
SCREEN=`xrandr | grep " connected" | awk '{print$1 }'`

echo Choose a brightness value between 0.1 and 1.0

read value

echo $value
if [[ $value > 0.0 && $value < 1.1 ]];
then 
    xrandr --output $SCREEN --brightness $value
else
    echo Restart the script with an acceplable value
fi
