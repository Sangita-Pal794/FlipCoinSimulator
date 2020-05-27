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

