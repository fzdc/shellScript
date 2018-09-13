#!/bin/bash
#let
no1=2;
no2=3;
let result=no1+no2
echo $result

#[]
result1=$[$no1+no2]
echo $result1

#(())
result2=$((no1*no2))
echo $result2

#expr
result3=`expr 2+3`
result4=$(expr $no1\*5)
result5=$(expr 7/2)
result6=`expr 8%3`
echo $result3
echo $result4
echo $result5
echo $result6
echo `expr 2+3`

#bc
echo '1.212*3' | bc
echo 'scale=2;3/8' | bc
abc=192
echo "obase=2;$abc" | bc
ac=11000000
echo "obase=10;ibase=2;$ac" | bc

echo "10^10" | bc
echo "sqrt(100)" | bc

