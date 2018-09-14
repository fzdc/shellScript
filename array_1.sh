#!/bin/bash
array_pt=(1 2 3 4)
echo ${array_pt[@]}
array_pt=([0]=one [1]=two [2]=three [3]=four)
echo array_pt:${array_pt[@]}
#左边开始最短匹配t*e,将匹配到thre
echo ${array_pt[@]#t*e}
#左边恺撒最长匹配
echo ${array_pt[@]##t*e}
#右边开始最短匹配
echo ${array_pt[@]%o}
#右边开始最长匹配
echo ${array_pt[@]%%o}

#字符串替换
echo ${array_pt[@]/o/m}
echo ${array_pt[@]//m/}
#替换字符串前端子串
echo ${array_pt[@]/#t/k}
echo ${array_pt[@]/%r/z}

echo ${array_pt[@]}

