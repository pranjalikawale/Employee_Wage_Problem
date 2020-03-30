#!/bin/bash -x

ISPRESENT=1
checkAttendence=$((RANDOM%2))

if [ $ISPRESENT -eq $checkAttendence ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi


