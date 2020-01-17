#!/bin/bash
input="/home/iva/Desktop/FER/5.semestar/OKOSL/lab3_skripte/imena.txt"
while IFS= read -r line
do
  sudo userdel "$line"
  sudo rm -r /home/"$line"
done < "$input"
