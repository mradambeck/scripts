#!/bin/bash
# killer.sh PROCESS-NAME
PROCESS=$1

if [ $PROCESS == "" ]
then
  echo "You must pass a process name to search for. For example: killer.sh webpack"
else
  ps -ef | grep $PROCESS | grep -v grep | grep -v killer.sh | awk '{print $2}' | xargs kill
  echo "killed all instances of $PROCESS"
fi
