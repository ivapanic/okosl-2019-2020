#!/bin/bash

pid=$(pgrep signali_1.sh | xargs)

# Ispis PID -a skripte
echo "provjera: pid skripte je: '$pid'"

kolicina=0
kapsule=0
sumece=0
komprimirane=0


while  true
do
  trap "kapsule=$((kapsule+1))" SIGALRM
  trap "komprimirane=$((komprimirane+1))" SIGUSR1
  trap "sumece=$((sumece+1))" SIGUSR2
  trap "exit 1" SIGINT
  kolicina=$((kapsule+komprimirane+sumece))
  echo "kapsule: '$kapsule' komprimirane: '$komprimirane' sumece: '$sumece' ukupno: '$kolicina'"
  echo "                                         "
  echo "                                         "
  sleep 1
done
