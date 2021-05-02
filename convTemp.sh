#!/bin/bash -x

degF_to_degC=1;
degC_to_degF=2;

echo "Enter selection for conversions";
echo "1 for degF >> degC";
echo "2 for degC >> degF";
read selection;

function convTemp(){

	case $1 in
		$degF_to_degC)
			echo "Enter value to be converted from F to C";
			read degF;
			result=$(( ($degF-32)*5/9 ));
		;;
		$degC_to_degF)
			echo "Enter value to be converted from C to F";
			read degC;
			result=$(( ($degC*9/5) + 32 ));
			;;
		*)
			result=0;
			;;
	esac

echo $result

}

conv="$( convTemp $selection )";

echo $conv
