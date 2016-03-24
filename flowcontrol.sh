#!/bin/sh

echo "Tell me who you are mortal."
read A
if [ "$A" = "Blake" ]; then
	echo "Very nice! Is there anything you need?"
	read A1
	if [ "$A1" = "Yes" ]; then
		echo "You should call someone about that"
	elif [ "$A1" = "No" ]; then
		echo "Good, I didn't want to help anyways!"
	else
		echo "Are you paying attention to the question?"
	
	fi
		read A2
		if [ "$A2" = "no" ]; then
			echo "didn't think so!"
		elif [ "$A2" = "yes" ]; then
			echo "It really doesn't seem that way!"
		else
			echo "Clearly you have no idea what's going on..."
		fi
else
	echo "STEP AWAY FROM THE TERMINAL, SIR/MA'AM!"
fi
