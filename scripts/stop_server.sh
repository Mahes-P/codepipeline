#!/bin/bash
PID=`ps -ef | grep 'helloworld-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}'`
if [ -n $PID ];then
   kill -9 $PID
fi
