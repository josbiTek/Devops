#!/bin/bash

# Functions
add() {
        echo $(($1 + $2))
}

substract() {
        echo $(($1 - $2))
}

multiply() {
        echo $(($1 * $2))
}

divide() {
        if [ $2 -eq 0 ]; then
                echo "Error: Division by zero"
                return 1
        fi

        echo $(($1 / $2))
}

modulo() {
        echo $(($1 % $2))
}

power() {
        echo $(($1 ** $2))
}

menu() {
echo "==========================="
echo "   Interactive Calculator"
echo "==========================="
echo ""
echo "1) Addition (+)"
echo "2) Substraction (-)"
echo "3) Exit"
echo ""

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
        read -p "Please select (1-2): " OUTPUT

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
