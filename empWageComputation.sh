#!/bin/bash

#UC1
random=$(($RANDOM%2))
echo $random
if (( $random == 1 ))
then
echo "Present"
else
echo "Absent"
fi

#UC2
Wage_Per_Hour=20
Full_Day_Hour=8

DailyWage=$(( $Full_Day_Hour  *  $Wage_Per_Hour ))

echo "$DailyWage"

#UC3
Part_Time_Hour=4

#UC4
Choice=$((1+$RANDOM%2))
case $Choice in 
	1)Emp_Hr=8;;
	2)Emp_Hr=4;;
	*)
esac

Daily_Wage=$(( $Emp_Hr * $Wage_Per_Hour )) 

echo "Daily wage using switch case" $Daily_Wage
