#!/bin/bash
echo $?
##./bainliang_1.sh var1 var2
echo "file name: $0"
echo "first parameter: $1"
echo "second parameter:$2"
echo "quoted values: $@"
echo "quoted valued: $*"
echo "total number of parameters: $#"

##diff $@ and $*
for var in "$@"
do
echo "$var"
done

for var in "$*"
do
echo "$var"
done
