#! /usr/bin/bash
echo "Hello World"

word1=Hello
word2=bash

clear

echo $word1 $word2

var1=$((22/7))

a1=22
a2=7
var23='scale=10;$a1/$a2' | bc

# echo "scale=10;$a1/$a2" | bc
echo $var23
echo 

operationsYN=0

if [ $operationsYN -eq 1 ]
then
	echo "Adder: 1"
	echo "Comparison: 2"
	read operation
	echo

	option1=1
	option2=2

	if [ $operation -eq $option1 ] 
	then
		echo "Basic Adder"
		echo 

		echo "Enter the first num: "
		read a

		echo "Enter the second num: "
		read b

		var3=$((a+b))

		echo "$a + $b = $var3"
	elif [ $operation -eq $option2 ]
	then
		echo "Basic Comparison"
		echo

		echo "Enter the first num: "
		read a

		echo "Enter the second num: "
		read b

		if [ $a -gt $b ]
		then
			echo "$a is greater than $b"
		elif [ $a -eq $b ]
			then
				echo "$a == $b"
		else
			echo "$b is greater than $a"
		fi

		# echo $var3
	fi
fi

echo "Check Vowels"
echo

echo "Enter a text"
read inputText
echo

for X in $inputText
do
	echo $X
done

for i in {1..3}
do
	# if [ $i/5 -eq ]
	# echo -e "\a"
	clear
	echo -e "\033[1;37m|"
	sleep .1
	clear
	echo -e "\033[0;31m/"
	sleep .1
	clear
	echo -e  "\033[0;34m-"
	sleep .1
	clear
	echo -e "\033[0;32m\ "
	sleep .1
	echo -e 'Hello, \vWorld, \vthis \vis \vPNAP!'
done