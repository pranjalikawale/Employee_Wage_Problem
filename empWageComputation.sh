#!/bin/bash -x

FULL_TIME=1
PART_TIME=2
WAGE_PER_HOURS=20
WORKING_DAY=20
WORKING_HOURS=100

total_Working_Hours=0
total_Working_Day=0

while [[ (($total_Working_Hours -lt $WORKING_HOURS)) || (($total_Working_Day -lt $WORKING_DAY)) ]]
do
	checkAttendence=$((RANDOM%3))
	
	case $checkAttendence in
		$FULL_TIME)
			HOURS=8
			;;
		$PART_TIME)
			HOURS=4
			;;
		*)
			HOURS=0
			;;
	esac

	total_Working_Hours=$(($total_Working_Hours+$HOURS))
	((total_Working_Day++))
done

salary=$(($WAGE_PER_HOURS*$total_Working_Hours))
echo "Monthly wage of employee is "$salary
