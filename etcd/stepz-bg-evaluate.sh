#!/bin/bash


sleep 5 

while true; do 
	#if [[ ! -f /tmp/testresult.lock ]]; then 
	#  touch /tmp/testresult.lock
#      /usr/bin/bats --pretty /tmp/testcases.bats > /tmp/testresult 
    #fi
#    grep -i test /tmp/testresult | grep  -i failure | awk '{print $1}'
    if [[ !  -f /tmp/testresult  ]]; then     
      sleep 2 
    else
      break
    fi
done

  
numtests=$(grep -i test /tmp/testresult | grep  -i failure | awk '{print $1}')
numfailures=$(grep -i test /tmp/testresult | grep  -i failure | awk '{print $3}')
numcorrect=`expr $numtests - $numfailures`
percent=$(echo "scale=0; 100 / $numtests  * $numcorrect" | bc)

cat > /tmp/evaluation-report << EOF

================================================

                   RESULT 

TOTAL QUESTIONS         :     $numtests               
CORRECT ANSWERS         :     $numcorrect
INCORRECT/UNATTEMPTED   :     $numfailures

================================================

YOUR SCORE              :     $numcorrect out of $numtests
PERCENTAGE              :     $percent% 

================================================
                                               
EOF



echo "done" >> /tmp/evaluation-report

