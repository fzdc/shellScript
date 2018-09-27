#!/bin/bash
var=1
until [ $var -gt 10 ]
do
	echo $var
	var=`expr $var + 1`
done
