#!/bin/bash
set -x

PID=`ps -ef | grep 'helloworld-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}'`
if [ $PID ];then
   kill -9 $PID
fi
