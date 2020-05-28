#!/bin/bash -x
flip()
{
    if [[ $((RANDOM%2)) == 0 ]]
    then
        echo "heads"
    else
        echo "tails"
    fi
}

declare -A singlet
singlet[heads]=0
singlet[tails]=0
for ((i=0;i<10;i++))
do
    if [[ $(flip) == "heads" ]] 
    then 
        
        singlet[heads]=$((${singlet[heads]}+1))
    else
        singlet[tails]=$((${singlet[tails]}+1))
    fi
done
echo ${singlet[@]}
echo "heads percent is $(echo "scale=2;(${singlet[heads]}/10)*100" | bc) and tails percentage is  $(echo "scale=2;(${singlet[tails]}/10)*100" | bc)"


