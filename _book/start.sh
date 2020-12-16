#!/bin/sh
 
rm -f tpid
nohup gitbook serve > gitbook.log 2>&1 &
echo $! > tpid
echo Start Success!
