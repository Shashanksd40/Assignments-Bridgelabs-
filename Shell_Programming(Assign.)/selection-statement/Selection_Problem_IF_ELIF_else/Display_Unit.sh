#!/bin/bash -x
read -p "Enter a number maximum of four Digit : " num
echo Entered number is $num
x=${#num}
if [ $x -le 1 ];then
   u=$((num%10))
	echo Units=$u
elif [ $x -le 2 ];then
   u=$((num%10))
   ten=$(((num/10)%10))
	echo Units=$u tenth=$ten
elif [ $x -le 3 ];then
   u=$((num%10))
   ten=$(((num/10)%10))
   hun=$(((num/100)%10))
	echo Units=$u tenth=$ten Hundreds=$hun
elif [ $x -le 4 ];then
	u=$((num%10))
	ten=$(((num/10)%10))
	hun=$(((num/100)%10))
	th=$(((num/1000)%10))
	echo Units=$u tenth=$ten Hundreds=$hun Thousands=$th
elif [ $x -le 5 ];then
	u=$((num%10))
   ten=$(((num/10)%10))
   hun=$(((num/100)%10))
   th=$(((num/1000)%10))
	tenth=$(((num/1000)%100))
	echo Units=$u tenth=$ten Hundreds=$hun Thousands=$th TenthofThousands=$tenth
elif [ $x -le 6 ];then
	 u=$((num%10))
   ten=$(((num/10)%10))
   hun=$(((num/100)%10))
   th=$(((num/1000)%10))
   tenth=$(((num/1000)%100))
	l=$(((num/100000)%10))
   echo Units=$u tenth=$ten Hundreds=$hun Thousands=$th TenthofThousands=$tenth lakh=$l
elif [ $x -le 7 ];then
    u=$((num%10))
   ten=$(((num/10)%10))
   hun=$(((num/100)%10))
   th=$(((num/1000)%10))
   tenth=$(((num/1000)%100))
   l=$(((num/100000)%10))
	tenl=$(((num/100000)%100))
   echo Units=$u tenth=$ten Hundreds=$hun Thousands=$th TenthofThousands=$tenth lakh=$l TenthofLakh=$tenl
elif [ $x -le 8 ];then
    u=$((num%10))
   ten=$(((num/10)%10))
   hun=$(((num/100)%10))
   th=$(((num/1000)%10))
   tenth=$(((num/1000)%100))
   l=$(((num/100000)%10))
   tenl=$(((num/100000)%100))
	c=$(((num/10000000)%10))
   echo Units=$u tenth=$ten Hundreds=$hun Thousands=$th TenthofThousands=$tenth lakh=$l TenthofLakh=$tenl crore=$c
fi


