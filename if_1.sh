#!/bin/bash
#整数值比较 [整数1 操作符 整数2]
#-eq:等于 equal
#-ne:不等于 not equal
#-gt:大于 greater than
#-lt:小于 lesser than
#-le:小于等于 lesser or equal
#-ge:大于等于 greater or equal

use=`df -hT | grep "/boot" | awk '{print $6}' | cut -d "%" -f1`
#df -hT :查看磁盘使用情况
#grep "/boot" :检索到/boot所在行
#awk '{print $6}' : 输出第六个参数
#cut -d "%" -f1 : 对第六个参数使用%进行切分(-d "%")，并取第一个参数值-f1

if [ $use -gt 80 ];then
	echo "Warning!!/boot disk is full"
elif [ $use -gt 30 ];then
	echo "/boot disk is used in a larger space"
else 
	echo "/book disk is free"
fi
