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

#UC5
#isPartTime=1
#isFullTime=2
totalsalary=0
#empRatePerHr=20
numofWorkingDays=20

for (( day=1; day<=$numofWorkingDays; day++ ))
do
       #randomCheck=$((1+$RANDOM%2))
       #case $randomCheck in
                            #$isPartTime )
                                   #empHrs=4
                             #;;
                            #$isFullTime )
                                    #empHrs=8
                              #;;
                              #*)
                                    #empHrs=0
                               #;;
     #esac
salary=$(( $Emp_Hr * $Wage_Per_Hour ))
totalsalary=$(( $totalsalary + $salary ))
done
#totalsalary=$(( $totalsalary + $salary ))
echo "Total salary of month :" $totalsalary

#UC6
Total_Working_Hr=100
Total_Hr=0
Total_Day=0
Total_Salary=0
while [ $Total_Hr -lt $Total_Working_Hr -a $Total_Day -lt $numofWorkingDays ]
do
        (( Total_Day++ ))
        Total_Hr=$(( $Total_Hr + $Emp_Hr ))
        echo "Total hour : " $Total_Hr
        salary=$(( $Total_Hr * $Wage_Per_Hour ))
        Total_Salary=$(( $Total_Salary + $salary ))

done
echo "Total hour : " $Total_Hr
echo "Total employee wage per hour and month :" $Total_Salary
