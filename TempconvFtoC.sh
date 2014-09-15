#!/bin/bash

DELAY=5

while [[ $REPLY != 0 ]]; do
	clear
	cat <<- _EOF_
		Please Select:

		1. Convert Farenheit to Celsius and Kelvin
		0. Quit

	_EOF_
	read -p "Enter Selection [0-1] > "

	if [[ $REPLY =~ ^[0-1]$ ]]; then
		if [[ $REPLY == 1 ]]; then
		read -p "Enter temperature (F) :" temp


		c=$(echo "scale=2; ($temp - 32)*5/9" | bc)
		d=$(echo "scale=2; ($c + 273.15)" | bc)

		echo "$temp F = $c C = $d K"
		
		sleep $DELAY
		fi
	else
		echo "Invalid entry."
		sleep $DELAY
	fi
done
echo "Program terminated."
