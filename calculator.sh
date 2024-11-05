#!/bin/bash

# Function to perform the calculation
calculate() {
    case $2 in
        +) echo "Result: $(($1 + $3))" ;;
        -) echo "Result: $(($1 - $3))" ;;
        \*) echo "Result: $(($1 * $3))" ;;
        /) 
            if [ $3 -eq 0 ]; then
                echo "Error: Division by zero!"
            else
                echo "Result: $(($1 / $3))"
            fi
            ;;
        *) echo "Invalid operator. Please use +, -, *, or /." ;;
    esac
}

# User input
echo "Welcome to the Bash Calculator!"
read -p "Enter the first number: " num1
read -p "Enter the operator (+, -, *, /): " operator
read -p "Enter the second number: " num2

# Perform the calculation
calculate $num1 $operator $num2

