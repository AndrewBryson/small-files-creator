#!/bin/bash

TOTAL=2000

for (( i=1; i<=$TOTAL; i++ ))
do
	TMPDIR=$(mktemp -d -p .)
	TMPFILE=$(mktemp -p $TMPDIR)
	echo "$i/$TOTAL: Writing: $TMPFILE"
	dd if=/dev/random count=10 of=$TMPFILE > /dev/null 2>&1
done
