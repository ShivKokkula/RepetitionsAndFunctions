#!/bin/bash -x

echo "Enter value of N";
read N;

while [ $(( N%2 )) == 0 ]
do
	echo "2";
	N=$(( N/2 ));
done

for (( i=3; $((i*i))<=N; i=$((i+2)) ))
do

	while [ $(( N%i )) == 0 ]
	do
		echo $i;
		N=$((N/i));
	done

done

if [ n>2 ]
then
	echo $N;
fi
