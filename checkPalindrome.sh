#! /usr/bin/bash

echo "Palindrome Program!"
echo 
echo "Enter the text: "
read inputText
echo 
name=car
inp=car

# if [[ inputText -eq name ]]
# then
# 	echo "!!!!"
# fi

foo=string
bool=0
# for (( i=0; i<${#foo}; i++ )); do
#   echo "${foo:$i:1}"
# done

for (( i = 0; i < ${#inputText}; i++ )); do
	if [[ ${inputText:${#inputText}-$i:1} != ${inputText:$i:1} ]]; then
		# echo "Not a Palindrome"
		bool=1
	# echo ${inputText:$i:1}
	# echo "${inputText:$i:1}"
	fi
done

val=1
nonVal=0

if [ $bool == $val ]; then
	echo "Is a Palindrome"
elif [[ $bool == $nonVal ]]; then
	echo "Not a Palindrome"
fi

# echo ${#inputText}

# ar=($inputText)
ar=${#inputText}
# echo ${ar[0]}
echo $ar

# for (( i = 0; i < $inputText; i++ )); do
# 	echo $i
# 	echo
# done

echo
echo "Enter a num: "
read iterNum
for (( i = 0; i < $iterNum; i++ )); do
	echo $i
done

echo
echo "Prime Numbers in a given range!"
echo
echo "Enter the Upper Limit: "
read UpperLimit
echo
echo The Prime Numbers are: 
echo


bool=0
for (( i = 1; i < UpperLimit; i++ )); do
	for (( j = 1; j < i; j++ )); do
		if [ $j != $i ] && [ $(expr $i % $j) == 0 ] && [ $j != 1 ]; then
			bool=1
			# echo $i
			break
		else
			bool=0
		fi
	done
	if [ $bool == 0 ]; then
		echo $i
		bool=1
	fi
done

# v1=89
# v2=72
# echo $(expr $v1 % $v2)
# if [ "H" == "K" ]; then
# 	echo "AAAA"
# else
# 	echo "BBBB"
# fi
# if [ $v1 != 89 ]; then
# 	echo "KLKLKLKL"
# fi