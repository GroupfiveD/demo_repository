#!/bin/bash
echo "my calculator"
echo "welcome to this calculator "
echo "enter the first number"
read num1
echo "enter an operator(- + / % /*)"
read operator
echo "enter the second number"
read num2
echo " $num1 $operator $num2 = $(expr $num1 $operator $num2)"
