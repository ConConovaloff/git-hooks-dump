#!/bin/bash

_script="$(readlink -f ${BASH_SOURCE[0]})"
_base="$(dirname $_script)"

FILE_DUMP="$_base/githooks.log"

echo "========================================" >> $FILE_DUMP
echo $(date "+%Y-%m-%d %H:%M:%S.%N") >> $FILE_DUMP
echo "# path to me --------------->  ${0}     " >> $FILE_DUMP
echo "# my name ------------------>  ${0##*/} " >> $FILE_DUMP
for var in "$@"
do
	echo "# argument ----------------->  $var " >> $FILE_DUMP
done
echo "========================================" >> $FILE_DUMP
