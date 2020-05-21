1>

#!/bin/bash -x
read -p "ENTER A NO" x
i=0
while [[ $i -le $x ]]
do
echo $((2**$i))| bc
((i++))
done

--------------------------------------------------------------------------------
3>

#!/bin/bash

printf "Choose (h)eads or (t)ails: "
read user_choice

# Make sure user chooses between heads or tails
if [ $user_choice != h ] && [ $user_choice != t ]; then
  echo "Invalid choice. Defaulting to (h)eads."
  user_choice=h
fi

# Value of 1 is heads, 2 is tails
i=0
while [ $i -le 11 ]
do
computer_choice=$((RANDOM % 2 + 1))

if [ $computer_choice -eq 1 ]; then
  echo "Computer chose heads."
else
  echo "Computer chose tails."
fi

if [ $computer_choice -eq 1 ] && [ $user_choice = h ]; then
  # Correct
  echo "You win!"
elif [ $computer_choice -eq 1 ] && [ $user_choice = t     | ]; then
  # Incorrect
  echo "You lose!"
elif [ $computer_choice -eq 2 ] && [ $user_choice = t ]; then
  # Correct
  echo "You win!"
else
  # Incorrect
  echo "You lose!"
fi
done
--------------------------------------------------------------------------------------------------
2>
#!/bin/bash
echo "Think of a number between 1 to 100"
start=1
end=100
while[ $start -le $end ]
do
	mid=$(((($start+$end))/2))
	echo -e "If your number is greater than $mid then write 'g' \nIf your number is less than and equal to $mid then write 'l'"
	read input
	case $input in
	1)
	   end=$mid
	   ;;
	2)
	  start=(($mid+1))
	3)
	echo "Invalid Input"
	break
	;;
	esac
done
echo "Your number is" $start
------------------------------------------------------------------------------------------------------------