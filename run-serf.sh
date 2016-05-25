#!/bin/sh

BIND=$1
JOIN=$2

echo $BIND
echo $JOIN

/usr/local/bin/serf agent \
	-bind=$BIND \
	-join=$JOIN \
	 > /dev/null 2>&1 &
