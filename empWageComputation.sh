#!/bin/bash -x

FULL_TIME=1
PART_TIME=2
WAGE_PER_HOUR=20

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

salary=$(($WAGE_PER_HOUR*$TOTAL_HOUR))
echo "Daily wage of employee is "$salary

