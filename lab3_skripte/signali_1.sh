#!/bin/bash
# Citanje PID -a druge  skripte...

pid=$(pgrep signali_2.sh | xargs)
echo "provjera: pid signali_2.sh je '$pid'"

while  true
do
  sleep 1
  sigval=$((1 + RANDOM  %3))

  # Slanje  odgovarajuceg  signala
  if [[ "$sigval" == "1" ]]
  then 
    kill -s SIGALRM "$pid"
    echo "poslana je kapsula"
  elif [[ "$sigval" == "2" ]]
  then
    kill -s SIGUSR1 "$pid"
    echo "poslana je komprimirana tableta"
  elif [[ "$sigval" == "3" ]]
  then
    kill -s SIGUSR2 "$pid"
    echo "poslana je sumeca tableta"
  fi

done
