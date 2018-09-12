#!/bin/bash
#echo
echo hello
echo 'hello'
#printf
echo "printf '%-5c\t %10s\b\n%4.2f\n' no tom 49.3232 >>>"
printf '%-5c\t %10s\b\n%4.2f\n' no tom 49.3232
#\e[1;31m 将颜色设置为红色
#\e[0m 将颜色重新置回
#颜色码：重置=0，黑色=30，红色=31，绿色=32，黄色=33，蓝色=34，洋红=35，青色=36，白色=37
#颜色码：重置=0，黑色=40，红色=41，绿色=42，黄色=43，蓝色=44，洋红=45，青色=46，白色=47
echo -e '\e[1;31;42m This is red text and green background.\e[0m'
