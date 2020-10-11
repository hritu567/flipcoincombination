#!/bin/bash -x
ran=$((RANDOM%2))
if [ $ran -eq 1 ]
  then 
 echo "Flipped coin is head"
   else
 echo "Flipped coin is tail"
fi