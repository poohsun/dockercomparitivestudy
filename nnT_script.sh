#!/bin/bash

for i in 1 10 100 1000 10000
do
	for j in 1 10 100 1000 10000
	do
		echo "Thread: $i" >> nnT_output.txt
		echo "Files: $j" >> nnT_output.txt
		hadoop org.apache.hadoop.hdfs.server.namenode.NNThroughputBenchmark -fs hdfs://10.1.0.81:8020 -op open -threads $i -files $j &>> nnT_output.txt
		echo "---------------------------------------------------------------------" >> nnT_output.txt
	done
done
