#!/bin/bash
#关联数组类似与python中的字典dict
#第一步：声明一个关联数组
declare -A array_var
#第二步：添加key-value
array_var=([one]=xian [two]=xianyang [three]=yanan)
array_var[four]=hanzhong

#获取关联数组key
echo ${!array_var[*]}
#获取关联数组value
echo ${array_var[@]}

#获取关联数组中所有的key-value
for key in ${!array_var[@]}
do
echo "${key} value is:  ${array_var[$key]}"
done
