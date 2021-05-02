#!/bin/bash -x

echo "Enter value of n: ";
read n;

sum=0;

for (( counter=1; counter<=$n; counter++ ))
do
	Hn=1/$counter;
	sum=$sum+$Hn;
done

echo "${n}th Harmonic is: ${sum}";
