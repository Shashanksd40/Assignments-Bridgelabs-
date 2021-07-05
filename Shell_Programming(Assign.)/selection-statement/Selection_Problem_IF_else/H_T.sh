#!/bin/bash -x
H_T=$((RANDOM%2))
if [ $H_T -eq 0 ]
then
	echo Heads
else
	echo Tails
fi
