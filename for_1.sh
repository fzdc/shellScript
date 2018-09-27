#!/bin/bash
for i in "$@"
do
	echo $i
done

for (( i=1; i<=5; i++ ))
do
	echo i=$i
done

for i in one two three
do
	echo $i
done
