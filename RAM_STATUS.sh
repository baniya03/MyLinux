#!/bin/bash
# This Script will let us know the free RAM status. we can also create cronjob of this and will send automatic mail to our system if it will come below threshold

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=4200

if [[ $FREE_SPACE -lt $TH ]]
then
        echo "Warning , ram is running low"
else
        echo "ram space is sufficient - $FREE_SPACE"
fi
