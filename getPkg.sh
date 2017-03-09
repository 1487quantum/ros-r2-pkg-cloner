#!/bin/bash
timestamp="$(date "+%Y-%m-%d,%T")"
printf "["${timestamp}"] Loading packages URL\n"
if [ -f r2_url.txt ]
then
	IFS=":" read -ra urlList<r2_url.txt;
	printf "["${timestamp}"] Entering ~/r2_sim/src directory"
	cd ~/r2_sim/src
	if [ $? -eq 0 ]
	then
		declare inst
		printf "["${timestamp}"] Git cloning the relevant r2 packages..."
		for i in "${urlList[@]}" ; do
		inst=$(echo "https://gitlab.com/nasa-jsc-robotics/"$i".git")
		echo "Clonning "$i 
		git clone $inst
		if [ $? -ne 0 ]
		then	
			timestamp="$(date "+%Y-%m-%d,%T")"
			erT="["${timestamp}"] Failed to clone "$i", skipping..."
			echo -e $erT
		fi
		done
		printf "["${timestamp}"] Done!\n----------------------------------------------\n"
	else
	printf "["${timestamp}"] Failed to enter r2_sim/src directory, quiting...\n"
	fi
else
	printf "["${timestamp}"] Failed to find r2_url.txt, quiting...\n"
fi

