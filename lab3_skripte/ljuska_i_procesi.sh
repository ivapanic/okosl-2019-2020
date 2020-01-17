#!/bin/bash

#foreground
./OKOSL_1920_lab03-3.sh

#send to bg
bg

./OKOSL_1920_lab03-3.sh &

#niceness and pid
ps ax -o pid,ni,cmd | grep "OKOSL"
renice value -p pid


#ctrl+c -> SIGINT - signal s terminala, proces se nastavi odvijati
#da bi se prekinuo, proces treba suspendirati s ctrl+z


#kada se ugasi terminal, posalje se signal SIGHUP - ugasen terminal u kojem
#se proces odvijao
#proces se nastavlja



