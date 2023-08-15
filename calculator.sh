#!bin/bash
#This is a calculator with basic functions
echo Welcome to my calculator
echo What operation would you like to perform?
sleep 5
echo 1.+
echo 2./*
echo 3./
echo 4.-
echo choose your option
read choice
echo Enter the first number
read num1
echo Enter the second number
read num2
echo your answer is `expr $num1 $choice $num2`
echo Thank you!
