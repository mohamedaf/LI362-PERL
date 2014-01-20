#! /bin/bash


if echo $1 | grep -E '((.)\2\2)+'; then
	echo ok
else 
	echo ko
fi

