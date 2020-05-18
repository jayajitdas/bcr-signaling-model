#!/bin/bash

./test_f -c param.cfg -t 10.0 -e 5000 | tail -n+2 > test.txt

#awk 'BEGIN{sum=0; flag=0}; ($1>=300){sum+=$5; flag++}; END{print sum/flag}' test.txt > std.txt
MEAN=`awk 'BEGIN{sum=0; flag=0}; {if($1>=300){sum+=$5; flag++}}; END{print sum/flag}' test.txt`
VAR=`awk -v mean=$MEAN 'BEGIN{sum=0; flag=0}; {if($1>=300){sum+=($5-mean)*($5-mean); flag++}}; END{print sqrt(sum)/flag}' test.txt`
echo "$MEAN $VAR" > std.txt
