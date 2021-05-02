#!/bin/bash -x

echo "Enter value of n: ";
read n;

for (( counter=1; counter<=$n; counter++ ))
do
result=$(( 2**$counter ));
echo "2 to the power of: ${result}";
done
