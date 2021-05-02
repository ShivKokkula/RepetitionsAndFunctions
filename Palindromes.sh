#!/bin/bash -x

echo "Enter number to check if it is a palindrome or not"

function Palindrome(){

digit=0;
rev="";

temp=$num;

while [ $num -gt 0 ]
do
	digit=$(( $num%10 ));
	num=$(( $num/10 ));
	rev=$( echo ${rev}${digit} );
done

if [ $temp == $rev ]
then
	echo "Number is a pallindrome";
else
	echo "Number is not a pallindrome";
fi

}

read num;

result="$( Palindrome $num )";

echo $result;
