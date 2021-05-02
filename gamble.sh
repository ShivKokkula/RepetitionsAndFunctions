#!/bin/bash -x

win=1;
lose=0;

number_wins=0;
number_loses=0;

gamble_amount=100;

while [[ $gamble_amount -lt 200 && $gamble_amount -gt 0 ]]
do

bet=$(( RANDOM%2 ));

if [ $bet -eq $win ]
then
	((gamble_amount++));
	((number_wins++));
elif [ $bet -eq $lose ]
then
	((gamble_amount--));
	((number_loses++));
else
	echo "No bet has been made";
fi

done

echo $number_wins;
echo $number_loses;


