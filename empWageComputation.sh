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
