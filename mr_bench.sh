#!/bin/bash

for j in 1 2 3 4 5
	do
		echo "Mappers: $i" >> mr_output.txt
		echo "Reducers: $j" >> mr_output.txt
		hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-*test*.jar mrbench -numRuns 1 -maps $i -reduces $i -inputLines 100000000 -inputType random &>> mr_output.txt
		echo "---------------------------------------------------------------------" >> mr_output.txt
	done