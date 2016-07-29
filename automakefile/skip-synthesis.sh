#!/bin/bash
if [ -z $1 ]
then
    echo -e "bad argument"
    exit 84
else
awk -vregex="$1" 'NR > 1 && $9 ~ "^" regex {print $3"\t"$9}'
fi
exit 0
