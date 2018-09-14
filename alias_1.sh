#!/bin/bash
#alias别名就是提供一种边界的方式来实现某些长串命令的操作。省去不必要的麻烦
##非交互环境下alias命令是关闭状态，查看方式：
shopt expand_aliases
#-s开启 -u关闭
shopt -s expand_aliases
alias mysqlrestart='/etc/init.d/mysqld restart'
mysqlrestart
#如果需要永久生肖，需要写入到~/.bashrc文件中
#echo 'alias mysqlrestart="/etc/init.d/mysqld restart"' >>~/.bashrc


#问题：alias别名只在当前shell有效，不能被子shell继承，也不能像环境变量一样export。可以把alias别名定义写在.bashrc文件中，这样如果启动交互式的子shell，则子shell会读取.bashrc，从而得到alias别名定义。但是执行shell脚本时，启动的子shell处于非交互式模式，是不会读取.bashrc的。
#方法一：可以在子shell中使用#!/bin/bash --login
#--login使得执行脚本的子shell成为一个login shell，login shell会读取系统和用户的profile及rc文件，因此用户自定义的.bashrc文件中的内容将在执行脚本的子shell中生效。#方法二：在脚本中主动source ~/.bashrc即可


#查看系统年以及定义的别名
#alias
#如果有些命令不希望使用别名：\command
#ls别名带有颜色提示，\ls就属于原始命令，不再有颜色提示
ls
\ls
