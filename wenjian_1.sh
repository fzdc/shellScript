#!/bin/bash

echo this is a new lin > test.txt
echo this is appended line >> test.txt
#标准错误输出2
cat linux.net 2>> test.txt
cat test.txt
#tee
ls | tee test.txt | cat -n
#在cat <<EOF>test.txt与下一个EOF之间的所有文本都会写入
cat <<EOF>test.txt
this is EOF1
this is EOF2
EOF

cat test.txt

exec 4>test1.txt
echo this is new line >&4
exec 5<test1.txt
cat <&5
exec 3>>test1.txt
echo this is appended line >&3
exec 5<test1.txt
cat <&5
