#!/bin/bash
#version 0.0.1
#
A=`ps -C nginx --no-header |wc -l`
if [ $A -eq 0 ];then
      docker restart iot-nginx
      sleep 3
            if [ `ps -C nginx --no-header |wc -l` -eq 0 ];then
                  systemctl stop keepalived
fi
fi