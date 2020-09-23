#!/bin/bash
#nohup java -jar /home/centos/helloworld-0.0.1-SNAPSHOT.jar 2>/dev/null  &
java -jar /home/centos/helloworld-0.0.1-SNAPSHOT.jar &
PID=`ps -ef | grep 'helloworld-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}'`
if [ $PID ];then
   exit 0
fi
