#!/bin/bash

# Functions
add() {
	echo $(($1 + $2))
}

substract() {
        echo $(($1 - $2))
}



menu() {
echo "==========================="
echo "   Interactive Calculator"
echo "==========================="
echo ""
echo "1) Addition (+)"
echo "2) Substraction (-)"


}

input_numbers() {
	while true; do
		read -p "Enter first number: " num1
		if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
			break
		else
			echo "Invalid number! Try again."
		fi
	done

	while true; do
		read -p "Enter second number: " num2
		if [[ "$num2" =~ ^-?[0-9]+$ ]]; then
			break
		else
			echo "Invalid number! Try again."
		fi
	done


}

while true; do
	menu
	read -p "Enter choice (1-7): " OUTPUT

	case $OUTPUT in 
		1)
			echo " ... Addition ... "
			input_numbers
			Result=$(add $num1 $num2)
			echo "$num1 + $num2 = $Result"
			;;
		2)
			echo " ... Substract ... "
                        input_number
                        Result=$(substract $num1 $num2)
                        echo "$num1 - $num2 = $Result"
                        ;;

		3)

			echo "Thank you for using calculator!"
			exit 0
			;;

		*)
			echo "Invalid choice!"
			;;
	esac

	echo ""
	read -p "Press Enter key to continue..."

done

