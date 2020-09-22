#!/bin/bash
rm -rf /home/centos/appspec.yml /home/centos/start_server.sh /home/centos/stop_server.sh /home/centos/helloworld-0.0.1-SNAPSHOT.jar

PID=`ps -ef | grep 'helloworld-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}'`
if [ -n $PID ];then
   kill -9 $PID
fi
