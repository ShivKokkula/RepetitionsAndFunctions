#!/bin/bash -x

Head_wins=0;
Tails_wins=0;

while [[ $Head_wins -lt 11 && $Tails_wins -lt 11 ]]
do

flip=$(( RANDOM%2 ));

if [ $flip == 0 ]
then
	(( Head_wins++ ))
else
	(( Tails_wins++ ))
fi

echo "Total wins for Head are: ${Head_wins}";
echo "Total wins for Tail are: ${Tails_wins}";

done
