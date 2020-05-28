#!/bin/bash
cntH=0;
cntT=0;
declare -A singlets
declare -A double
declare -A triplet
for ((i=0;i<10;i++))
do
        n=$(($RANDOM%2))
        if [[ $n -eq 0 ]]
        then
                singlets[$i]="H"
                ((cntH++))
        else
                singlets[$i]="T"
                ((cntT++))
        fi
done
headPercentage=`echo "scale=2;$cntH/10*100" | bc`
tailPercentage=`echo "scale=2;$cntT/10*100" | bc`
if (( $(echo "$headPercentage>$tailPercentage" | bc -l) ))
then
        echo "In singlet Combination,Heads wins by $headPercentage percentage"
elif (( $(echo "$tailPercentage>$headPercentage" | bc -l) ))
then
        echo "In singlet Combination,Tails wins by $tailPercentage percentage"
else
        echo "It is a tie"
fi
cntH=0;
cntT=0;
for ((i=0;i<10;i++))
do

        n1=$(($RANDOM%2))
        if [[ $n -eq 0 && $n1 -eq 0 ]]
        then
                double[$i]="HH"
                ((cntH++))
        elif [[  $n -eq 1 && $n1 -eq 1 ]]
        then
                double[$i]="TT"
                ((cntT++))
        elif [[  $n -eq 0 && $n1 -eq 1 ]]
        then
                double[$i]="HT"
                ((cntH++))
                ((cntT++))
        else
                double[$i]="TH"
                ((cntT++))
                ((cntH++))
        fi
done
headPercentage=`echo "scale=2;$cntH/10*100" | bc`
tailPercentage=`echo "scale=2;$cntT/10*100" | bc`
if (( $(echo "$headPercentage>$tailPercentage" | bc -l) ))
then
                echo "In Doublet,Heads wins by $headPercentage percentage"
elif (( $(echo "$tailPercentage>$headPercentage" | bc -l) ))
then
                echo "In Doublet,Tails wins by $tailPercentage percentage"
else
                echo "It is a tie"
fi
cntH=0
cntT=0
for ((i=0;i<10;i++))
do
        n2=$(($RANDOM%2))
        if [[ $n -eq 0 && $n1 -eq 0 && $n2 -eq 0 ]]
        then
                triplet[$i]="HHH"
                ((cntH++))
        elif [[  $n -eq 1 && $n1 -eq 1 && $n -eq 1 ]]
        then
                triplet[$i]="TTT"
                ((cntT++))
        elif [[  $n -eq 0 && $n1 -eq 0 && $n -eq 1 ]]
        then
                triplet[$i]="HHT"
                ((cntH++))
                ((cntT++))
        elif [[  $n -eq 1 && $n1 -eq 0 && $n -eq 0 ]]
        then
                triplet[$i]="THH"
                ((cntH++))
                ((cntT++))
        elif [[  $n -eq 0 && $n1 -eq 1 && $n -eq 1 ]]
        then
                 triplet[$i]="HTT"
                ((cntT++))
                ((cntH++))
        elif [[  $n -eq 1 && $n1 -eq 1 && $n -eq 0 ]]
        then
                 triplet[$i]="TTH"
                ((cntT++))
                ((cntH++))
        elif [[  $n -eq 1 && $n1 -eq 0 && $n -eq 1 ]]
        then
                 triplet[$i]="THT"
                ((cntT++))
                ((cntH++))
        else
                 triplet[$i]="HTH"
                ((cntT++))
                ((cntH++))
        fi
done

headPercentage=`echo "scale=2;$cntH/10*100" | bc`
tailPercentage=`echo "scale=2;$cntT/10*100" | bc`
if (( $(echo "$headPercentage>$tailPercentage" | bc -l) ))
then
                echo "In Triplet,Heads wins by $headPercentage percentage"
elif (( $(echo "$tailPercentage>$headPercentage" | bc -l) ))
then
                echo "In Triplet,Tails wins by $tailPercentage percentage"
else
                echo "It is a tie"
fi

