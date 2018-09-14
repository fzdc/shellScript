#!/bin/bash
read -p "输入密码：" -s pwd
echo
echo password read, is "$pwd"

stty -echo
read -p "输入密码：" pwd2
stty echo
echo
echo password read, is "$pwd2"
