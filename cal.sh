#!/bin/bash
echo "welcome to group5 calculator"
echo "what do you want to calculate (-,+,/,\*,%)"
read choice
echo enter 1st number
read num1
echo enter 2nd number
read num2
echo $num1 $choice $num2
expr $num1 $choice $num2
echo thanks for using group5 calculator

