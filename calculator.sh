#!bin/bash
#this is a random calculator file
echo "please calculate below"
echo "1.add"
echo "2. multiply"
echo "3.divide"
echo "4.substract"
echo "choose your option"
read choice
echo "Please enter the first number"
read num1
echo "Enter another number"
read num2

if
	[ $choice == "1" ]
then
	echo $((num1+num2))
elif 
	[ $choice == "2" ]
then
	echo $((num1*num2))
elif
	[ $choice == "3" ]
then
	echo $((num1/num2))
elif
	[ $choice == "4" ]
then
	echo $((num1-num2))
else 
	echo "invalid option"
fi
