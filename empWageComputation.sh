#!/bin/bash -x

FULL_TIME=1
PART_TIME=2
WAGE_PER_HOUR=20
WORKING_DAY=20
salary=0

for (( i=1;i<=WORKING_DAY;i++ ))
do
	checkAttendence=$((RANDOM%3))

	case $checkAttendence in
		$FULL_TIME)
			TOTAL_HOUR=8
			;;
		$PART_TIME)
			TOTAL_HOUR=4
			;;
		*)
			TOTAL_HOUR=O
			;;
	esac

	payPerDay=$(($WAGE_PER_HOUR*$TOTAL_HOUR))
	salary=$(($salary+$payPerDay))
done

echo "Monthly wage of employee is "$salary

