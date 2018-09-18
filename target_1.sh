#!/bin/bash
#图形界面和命令界面切换
#vim /etc/inittab
systemctl get-default
#查看当前系统启动模式

#切换启动模式
#systemctl set-default multi-user.target  #切换到命令模式
#systemctl set-default graphical.target  #切换到图形界面
