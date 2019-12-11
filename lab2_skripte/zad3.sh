#!/bin/bash
cat >> Top10 << EOF


cat Top10
printf "\n"
sed -i '/[0-9]/!d' Top10
sed -i 's/\(.*\)/\L\1/' Top10
sed -i 's/\([aeiou]\)/\U\1/g' Top10 
sed -i 's/\([^0-9]*\) \([0-9]*.*[0-9]*\)/\2 \1/' Top10 
sort -n -t '.' -k1 Top10



