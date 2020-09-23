#!/bin/bash
java -jar /home/centos/helloworld-0.0.1-SNAPSHOT.jar >helloworl.log 2>/dev/null  &
PID=`ps -ef | grep 'helloworld-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}'`
if [ $PID ];then
   exit 0
fi
