#!/bin/bash -x

echo "Enter value of n: ";
read n;
counter=1;

while [ $counter != $(( $n + 1 )) ]
do
	if [ $result -ge 256 ]
	then
		break;
	fi

	result=$(( 2**$counter ));
	(( counter++ ));
done

echo "2 to the power of ${n}: ${result}";
