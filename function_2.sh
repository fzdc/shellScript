#!/bin/bash
function name(){
	i=1
	while (($i<10))
	do
	  echo $1
	  sleep 1s
	  i=$(($i+1))
	done
}
name hello

#fork炸弹
#.()               #定义函数.
#{
#.|.&      #函数内容调用自己，再利用管道|启动新进程调用自己，&放入后台执行
#}	
#;		  #调用函数.
#.

#如何规避fork炸弹
#1、ulimit -u 20 命令修改，重启后失效
#2、修改配置文件 /etc/security/limits.conf,添加配置 root - nproc 20 
#   root替换成对应的用户，重启生效
