#!/bin/bash -x

ISPRESENT=1
checkAttendence=$((RANDOM%2))

if [	$ISPRESENT -eq $checkAttendence	]
then
	echo "Employee is Present"
	WAGE_PER_HOUR=20
	TOTAL_HOUR=8
	salary=$(($WAGE_PER_HOUR*$TOTAL_HOUR))
else
	echo "Employee is Absent"
	salary=O
fi

echo "Daily wage of employee is "$salary

