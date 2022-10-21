#!/bin/bash
i=0
while true
do
	((i=i+1))
	log=test_$i.log
	sudo ./run_test.sh > $log
	if [ $? -eq 0 ]; then
		echo "Test $i Passed!"
		rm $log
	else
		echo "Test $i Failed!"
	fi
done
