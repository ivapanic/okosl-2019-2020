#!/usr/bin/bash

# Obavezno prije rjesavanja detaljno procitajte pdf datoteku zadace kao i upute za
# rjesavanje domacih zadaca u repozitoriju kolegija!

# Bilo kakvo hardkodiranje rjesenja negativno ce se ocijeniti.

# Zadatke 1-9 potrebno je rijesiti bez koristenja naredbe grep.

#!#!#!#!#!#!#
# 1. Ispisite sve procese koje je pokrenuo trenutni korisnik (i samo njih)
# koristeci naredbu ps. (0.5)

ps eu

#!#!#!#!#!#!#
# 2. Sortirajte ispis po zauzecu memorije. (0.5)

ps eu --sort -rss

#!#!#!#!#!#!#
# 3. Sada ucinite zadatak 2. pomocu naredbe top. (1.0)

top -u $USER -o %MEM

#!#!#!#!#!#!#
# 4. Ispisite sve PID-ove vaseg internet preglednika. (0.5)
# (ovdje koristite posebnu vrstu naredbe grep koja je za procese)

pgrep -f firefox 

#!#!#!#!#!#!#
# 5. Ispisite proces s PPID-om 2. (0.5)

ps -p 2 -o comm=

#!#!#!#!#!#!#
# 6. Ispisite procese s PID-om 1,4 i 7. (0.5)

ps -p 1,4,7 -o comm=

#!#!#!#!#!#!#
# 7. Ispisite stablo procesa za trenutnog korisnika. (0.5)

pstree $USER


#!#!#!#!#!#!#
# 8. Ispisite sve signale dostupne u vasem sustavu. (0.5)

kill -l

#!#!#!#!#!#!#
# 9. Ispisite popis ljuski dostupnih na sustavu. (0.5)

cat /etc/shells

#!#!#!#!#!#!#

# Zadaci 10-14 se odnose na C program signal_handler.c
# U zadacima 10., 13. i 15. potrebno je program pokrenuti u pozadini.
# Posebno obratite pozornost da u zadacima 12-15 ne hardkodirate PID programa!

# 10. Pokrenite program signal_handler. (0.5)
# Program je potrebno prevesti te postaviti dozvole no taj dio ne navodite u rjesenju.
# (npr. "gcc signal_handler.c" i "chmod +x <ime_programa>")



#!#!#!#!#!#!#
# 11. Pronadite PID tog programa. (0.5)



#!#!#!#!#!#!#
# 12. Pokusajte "ubiti" taj proces naredbom kill.
# Sada pokusajte ubiti slanjem adekvatnog signala. (0.5)
# (Dozvoljeno viselinijsko rjesenje)



#!#!#!#!#!#!#
# 13. Pokrenite program i posaljite mu SIGUSR1. (0.5)
# (Dozvoljeno viselinijsko rjesenje)



#!#!#!#!#!#!#
# 14. Posaljite mu SIGINT. (0.5)



#!#!#!#!#!#!#
# 15. Pokrenite program i posaljite mu SIGUSR2. (0.5)
# (Dozvoljeno viselinijsko rjesenje)



#!#!#!#!#!#!#
