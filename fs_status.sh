#!/bin/bash

#Monitoring free disk space

FU=$(df -h | egrep -v "none|snapfuse" | grep "C" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then
        echo "Disk space is low"
else
        echo "All good!!"
fi
