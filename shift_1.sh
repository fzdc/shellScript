#!/bin/bash
ab=( 1 2 3 4 5 6 )
res=0
while [ $# -gt 0 ]
do
	res=`expr $res + $1`	
	#迁移，将参数向左迁移一位
	shift
done
echo "(shift command)the sum is:$res"
res1=0
for i in ${ab[@]}
do
	res1=`expr $i + $res1`
done
echo "(for command)the sum is:$res1"
res2=0
for i in ${ab[@]}
do
	if [ $i -eq 3 ];then
		break
	else
		res2=`expr $i + $res2`
	fi
done
echo "(break command)the sum is:$res2"
res3=0
for i in ${ab[@]}
do
	if [ $i -eq 3 ];
	then
		continue
	else
		res3=`expr $i + $res3`
	fi
done
echo "(continue command)the sum is:$res3"
