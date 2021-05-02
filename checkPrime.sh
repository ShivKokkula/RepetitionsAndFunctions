#!/bin/bash -x

echo "Enter number to check if it is prime or not:";
read n;

IsNotPrime=0;
for (( counter=2; counter<$n; counter++ ))
do

if [ $(($n%$counter)) == 0 ];
then
	IsNotPrime=1;
fi

done

if [ $IsNotPrime == 1 ];
then
	echo "Number is not prime";
else
	echo "Number is Prime";
fi
