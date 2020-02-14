#!/bin/bash

targetProcessId=`adb shell ps -eT | grep $1 | awk '{print $2}'`

while true
do
  echo `adb shell ps -eT | grep $targetProcessId | wc -l`
  sleep 1
done

