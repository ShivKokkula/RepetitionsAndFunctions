#!/bin/bash -x

echo "Enter the range of numbers in which you want prime no's:";
echo "Enter min in range:";
read min;
echo "Enter max in range:";
read max;

for (( num=$min; num<$max; num++ ))
do
	IsNotPrime=0;
	for (( counter=2; counter<$num; counter++ ))
	do
		if [ $(( $num%$counter )) == 0 ]
		then
			IsNotPrime=1;
		fi
	done

	if [ $IsNotPrime -eq 0 ]
	then
		echo "${num}";
	fi

done


