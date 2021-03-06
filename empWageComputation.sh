#!/bin/bash -x

FULL_TIME=1
PART_TIME=2
WAGE_PER_HOURS=20
WORKING_DAY=20
WORKING_HOURS=100

total_Working_Hours=0
total_Working_Day=0
declare -A daily_Wages

function get_Working_Hours()
{
	case $1 in
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
	echo $HOURS
}

function get_Daily_Wages()
{
	local hrs=$1
	wages=$(($hrs*$WAGE_PER_HOURS))
	echo $wages
}

while [[ (($total_Working_Hours -lt $WORKING_HOURS)) && (($total_Working_Day -lt $WORKING_DAY)) ]]
do
	hrs="$( get_Working_Hours $((RANDOM%3)) )"
	total_Working_Hours=$(($total_Working_Hours+$hrs))
	((total_Working_Day++))
   daily_Wages[$total_Working_Day]="$( get_Daily_Wages $hrs)"
done

salary="$( get_Daily_Wages $total_Working_Hours)"

echo "Monthly Salary: $salary"
echo "Day: ${!daily_Wages[@]}"
echo "Wages Per Day: ${daily_Wages[@]}"


