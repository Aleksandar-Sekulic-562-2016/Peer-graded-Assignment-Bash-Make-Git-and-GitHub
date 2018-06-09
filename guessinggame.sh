#!/bin/bash
echo "Enter the number of files in dir"
read br
n=$(ls -1 . | wc -l)
while [[ ! ( $br -eq $n ) ]]
do
	if [ $br -lt $n ]
	then
		printf "\n\n"
		echo "There is MORE files in dir"
	elif [ $br -gt $n ]
	then
		printf "\n\n"
		echo "There is LESS files in dir"
	fi

	echo "Enter the num of files in dir: "
	read br
done
printf "\n\n***\n"
echo "Bravo, there are $br files in  dir."
exit 0
