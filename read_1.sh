#!/bin/bash
read -t 10 -p "10秒后终止输入" tim
echo $tim

read -t 20 -p "Enter three parameters:(20秒后终止输入！)" one two three
echo
read  -p "Enter value:" 

echo $REPLY
if [ "$REPLY" = "$one" ];then
echo "one=$one"
elif [ "$REPLY" = "$two" ];then 
echo "two=$two"
elif [ "$REPLY" = "$three" ];then 
echo "three=$three"
else 
echo "no found"
fi
#允许输入包含反斜杠
read -r -p "允许输入包含反斜杠" line
echo "$line"
#读取字符数
read -n 2 -p "读取两个字符" var
echo "$var"
#用界定符：结束输入行
read -d ":" -p "用界定符：结束输入行" v
echo
echo $v


