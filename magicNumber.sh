#!/bin/bash -x

echo "Think of a number between 1 to 100";
read num;

min=1;
max=100;

counter=$(( $min+$max/2 ));
while [ $counter -lt $num ]
do
	if [ $counter == $num ]
	then
		echo "Number you guessed is: ${counter}";
		break;
	fi

	if [ $num < $(( $counter/2 )) ]
	then
		counter=$(( $counter - $(( $counter/2 )) ));
	else
		counter=$(( $counter + $(( $counter/2 )) ));
	fi
done
