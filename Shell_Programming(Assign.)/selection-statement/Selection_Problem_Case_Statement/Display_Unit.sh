#!/bin/bash -x
read -p "Enter a number maximum of four Digit : " number
echo Enter number is $number
x=${#number}
case "$x" in
	1) u=$((number%10))
		echo Units=$u
	;;
   2) u=$((number%10))
   	ten=$(((num/10)%10))
		echo Units=$u Tenth=$ten
	;;
   3)	u=$((number%10))
   	ten=$(((number/10)%10))
   	hun=$(((number/100)%10))
		echo Units=$u Tenth=$ten Hundreds=$hun
	;;
	4) u=$((number%10))
		ten=$(((number/10)%10))
		hun=$(((number/100)%10))
		th=$(((number/1000)%10))
		echo Units=$u Tenth=$ten Hundreds=$hun Thousands=$th
	;;
	5) u=$((number%10))
   	ten=$(((number/10)%10))
   	hun=$(((number/100)%10))
   	th=$(((number/1000)%10))
		tenth=$(((number/1000)%100))
		echo Units=$u Tenth=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth
	;;
	6) u=$((number%10))
   	ten=$(((number/10)%10))
   	hun=$(((number/100)%10))
   	th=$(((number/1000)%10))
   	tenth=$(((number/1000)%100))
		l=$(((number/100000)%10))
   	echo Units=$u Tenth=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l
	;;
	7) u=$((number%10))
   	ten=$(((number/10)%10))
   	hun=$(((number/100)%10))
   	th=$(((number/1000)%10))
   	tenth=$(((number/1000)%100))
   	l=$(((number/100000)%10))
		tenl=$(((number/100000)%100))
   	echo Units=$u Tenth=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l TensofLakh=$tenl
	;;
   8) u=$((number%10))
   	ten=$(((number/10)%10))
   	hun=$(((number/100)%10))
   	th=$(((number/1000)%10))
   	tenth=$(((number/1000)%100))
   	l=$(((number/100000)%10))
   	tenl=$(((number/100000)%100))
		c=$(((number/10000000)%10))
   	echo Units=$u Tenth=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l TensofLakh=$tenl crore=$c
esac
