#!/bin/bash -x
read -p "Enter the Values of a , b and c : " a b c
echo $a $b $c
M[1]=$((a+b*c))
M[2]=$((a%b+c))
M[3]=$((c+a/b))
M[4]=$((a*b+c))
echo NUmber is $M1 $M2 $M3 $M4
max=0
min=999
for i in ${M[*]}
do
   if [[ $i -gt $max ]];
   then
      max=$i
   fi

   if [[ $i -lt $min ]];
   then
      min=$i
   fi
done
echo max : $max
echo min : $min
