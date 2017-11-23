#!/bin/sh

# Start Java
nohup java -jar /home/service1-0.0.1-SNAPSHOT.jar 2000 1>/dev/null 2>/dev/null &
/usr/local/bin/envoy -c /etc/envoy.json
#java -jar
# Start Envoy
#/usr/local/bin/envoy -c /etc/envoy.json
