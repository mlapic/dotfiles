#! /bin/bash
CURRENT_BRIGHTNESS=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
BR_STEP=0.05
if [ "$1" == "inc" ]; then
	if (( $(echo "$CURRENT_BRIGHTNESS >= 1.0" |bc -l) )); then
        	xrandr --output eDP-1 --brightness 1.0
		echo $CURRENT_BRIGHTNESS
		exit
	else
		NEW_BRIGHTNESS=`echo "$CURRENT_BRIGHTNESS $BR_STEP" | awk '{print $1+$2}'`
		xrandr --output eDP-1 --brightness $NEW_BRIGHTNESS
	fi
elif [ "$1" == "dec" ]; then
	if (( $(echo "$CURRENT_BRIGHTNESS <= 0.3" |bc -l) )); then
        	xrandr --output eDP-1 --brightness 0.3
		echo $CURRENT_BRIGHTNESS
		exit
	else
		NEW_BRIGHTNESS=`echo "$CURRENT_BRIGHTNESS $BR_STEP" | awk '{print $1-$2}'`
		xrandr --output eDP-1 --brightness $NEW_BRIGHTNESS
	fi
else
	echo $CURRENT_BRIGHTNESS
	exit
fi
CURRENT_BRIGHTNESS=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
echo $CURRENT_BRIGHTNESS
