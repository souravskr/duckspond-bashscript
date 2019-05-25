#!/bin/bash

if [[ $# -eq 0 ]] || [[ $# -eq 1 ]]; then
	echo "Pass Arguments"
	exit 1
fi

number=$1
number1=$2
count=0
primeNumber=()
for i in `seq $number $number1`;do
	if [ `factor $i | wc -w` -eq 2 ];then
		primeNumber+=($i)
		count=$(($count + 1))
	fi
done


echo "username: `whoami`"
echo "home directory: $HOME"
echo "terminal type: $TERM"
DATE=`date`
echo "date: $DATE"

echo " "

if [ ${#primeNumber[@]} -eq 0 ]; then
	echo "No prime numbers between $number and $number1"
else
	echo "You have $count prime numbers between $number and $number1"
	echo "The prime numbers are: ${primeNumber[@]}"
fi

