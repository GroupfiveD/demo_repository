#bin/bash
#this is a scrip that contains the summary of what we have been doing so far
echo you are welcome
echo please enter your name
read nm
echo your name is $nm
echo input password below
read -s paswd
echo re-enter password
read -s pass
if [ $paswd == $pass ]
then
	echo you are authenticated
else
	echo incorrect password
fi
break
echo do you want to calculate ??? yes/no
read ys
if [ $ys == yes ]
then
	echo "please select the symbol you want to use to calculate (+ - / */ *)"
	read sign
	echo please input your first number
	read num
	echo please input second number
	read num2
	echo your answer is `expr $num $sign $num2`
else
	echo okay
fi
break
	echo your current working directory is `pwd`
	echo this are the list of what is in your directory 
	ls

echo thats all for now
