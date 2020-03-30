#!/bin/bash -x

FULL_TIME=1
PART_TIME=2
WAGE_PER_HOUR=20

checkAttendence=$((RANDOM%3))

if [	$FULL_TIME -eq $checkAttendence	]
then
	TOTAL_HOUR=8
elif [ $PART_TIME -eq $checkAttendence ]
then
	TOTAL_HOUR=4
else
	TOTAL_HOUR=O
fi

salary=$(($WAGE_PER_HOUR*$TOTAL_HOUR))
echo "Daily wage of employee is "$salary

