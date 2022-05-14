#! /usr/bin/bash

echo Menu
echo 1: Display Calendar
echo 2: Display Date and Time
echo 3: Display Username
echo 4: Show Terminal Number
echo 5: Exit
echo

echo Enter Your Choice
read choice
echo

case $choice in
	1)echo "Calendar: ";cal;;
	2)echo "Date and Time: ";date;;
	3)echo "Username: ";who;;
	4)echo "Terminal Number: "$(who -l -u);;
	5)echo "Exit";;
esac
echo