#!/bin/bash -x

echo "Enter number to find its factorial:";
read num;

factorial=1;

for (( counter=1; counter<=$num; counter++ ))
do
factorial=$(( $factorial*$counter ));
done

echo "Factorial of ${num}: ${factorial}";
