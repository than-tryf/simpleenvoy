#!/bin/sh

# Start Java
nohup java -jar /home/service1-0.0.1-SNAPSHOT.jar 2000 1>/dev/null 2>/dev/null &
/usr/local/bin/envoy -c /etc/envoy.json
#java -jar
# Start Envoy
#/usr/local/bin/envoy -c /etc/envoy.json


# while /bin/true; do
#   ps aux |grep service1-0.0.1-SNAPSHOT.jar |grep -q -v grep
#   PROCESS_1_STATUS=$?
#   ps aux |grep my_second_process |grep -q -v grep
#   PROCESS_2_STATUS=$?
#   # If the greps above find anything, they will exit with 0 status
#   # If they are not both 0, then something is wrong
#   if [ $PROCESS_1_STATUS -ne 0 -o $PROCESS_2_STATUS -ne 0 ]; then
#     echo "One of the processes has already exited."
#     exit -1
#   fi
#   sleep 60
# done


# Local Test
# nohup java -jar service1-0.0.1-SNAPSHOT.jar 1>/dev/null 2>/dev/null &
# echo "Hello World"
