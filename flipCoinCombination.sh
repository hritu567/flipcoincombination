#!/bin/bash -x
read -p "Enter the number of times coin should be tossed " num 
coins=3
declare -A dictionary
H=0
T=0
function coin() {
for (( i=1; i<=$num; i++ ))
do
str=""
 for(( j=0; j<$coins; j++ ))
 do
   ran=$(( RANDOM % 2 ))
	if [ $ran -eq 1 ]
	then
	   str=$str"H"
	else
            str=$str"T"
	fi
  done
echo coins : $str
dictionary["$str"]=$(( ${dictionary["$str"]} + 1 ))
done
}

coin
echo "${!dictionary[@]} : ${dictionary[@]}"