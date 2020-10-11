#!/bin/bash
read -p "enter the number of times coin should be tossed " num
Head=0
Tail=0
for ((i=0; i<$num; i++))
do
	ran=$((RANDOM%2))
	if [ $ran -eq 1 ]
	then
		 ((Head++))
	else
		 ((Tail++))
	fi
done

declare -A Coin
Coin[((Head))]=$Head
Coin[((Tail))]=$Tail
echo ${Coin[@]}

tothead=$(($Head*100))
headper=$(($tothead/$num))
tottail=$(($Tail*100))
tailper=$(($tottail/$num))
echo "head percentage : $headper , tails percentage : $tailper "