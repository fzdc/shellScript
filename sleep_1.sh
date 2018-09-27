#!/bin/bash
#s秒 m分钟 h小时 d天
b=''
for (( i=0;$i<=10;i++ ))
do
	printf "Progress:[%-10s]%d%%\n" $b $i
	sleep 0.5
	b=#$b
done
echo
