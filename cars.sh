#! /bin/bash
# cars.sh
# Jesse Aseoff

INPUT=0

while [ "$INPUT" -ne "3" ]
do
	echo "Type the number 1 to enter a new car: "
	echo "Type the number 2 to display the list of cars: "
	echo "Type the number 3 to quit and exit the program: "
	read -r INPUT

	case "$INPUT" in
		"1") echo "Year of car: "
		read -r YEAR
		echo "Make of car: "
		read -r MAKE
		echo "Model of car: "
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye!";;
		*)echo "Invalid option. Try again";;
	esac
done
