#!/usr/bin/env bash
# File: guessinggame.sh

function start {
files=$( ls -a | wc -l)
echo "Do you want to play a game? Guess the number of files in the current directory."
}
start
while [[ reply -ne $files  ]]
do
	read reply
	if [[ $reply -eq $files ]] && [[ "$reply" =~ [0-9] ]]
	then
		echo "The number is correct. Congratulations!"
	elif [[ $reply -lt $files ]] && [[ "$reply" =~ [0-9] ]]
	then
		echo "The number is too low. Try again."
	elif [[ $reply -gt $files ]] && [[ "$reply" =~ [0-9] ]]
	then
		echo "The number is too high. Try again."
	else
		echo "I don't expect that.. Could you enter the number, please?"

	fi

done
