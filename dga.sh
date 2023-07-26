#!/bin/bash

TIME=360000
TEST=1

while [ $TIME -gt 0 ]

do

RANDOMDOMAIN=`uuidgen | awk 'BEGIN{FS=OFS";"} {gsub(/\-/,".", $1 )}1'`

nslookup $RANDOMDOMAIN.com

echo "Test $TEST"

TIME=$(( $TIME - 1))
TEST=$(( $TEST + 1))

sleep 1

done
