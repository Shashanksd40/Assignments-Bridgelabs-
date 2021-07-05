#!/bin/bash -x
read -p "Enter a Number : " num
echo $num
if [ $num -le 1 ];then
   echo There is no Prime Factor
   exit 1
fi
count=0
primeFactor=0
for ((i=2;i<=$num/2;i++))
do
	if [ $(($num%$i)) -eq 0 ];then
		flag=1
   	for ((j=2;j<=$i/2;j++))
   	do
   	   if [ $(($i%$j)) -eq 0 ];then
   	      flag=0
   	   fi
   	done
   	if [ $flag -eq 1 ];then
			primeFactor=1
   	   arr[$((count++))]=$i
   	fi
	fi
done
if [ $primeFactor -eq 1 ];then
	echo Prime Factor are : ${arr[*]}
elif [ $primeFactor -eq 0 ];then
	echo There is no Prime Factor
fi
