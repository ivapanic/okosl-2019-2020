#!/usr/bin/bash

#!#!#!#!#!#!#
# 1. Koristeci naredbu echo i preusmjeravanje stvorite datoteku naziva dz02.dat
# koja sadrzi danasnji datum u sebi. (Datum ne smije biti hard-kodiran) (1.0)

echo $(date) >> dz02.dat

#!#!#!#!#!#!#
# 2. Koristeci naredbu cat i here dokument dodajte string "OKOSL" u redak ispod datuma
# u datoteci iz proslog zadatka. U ovom zadatku je dozvoljeno rjesenje s vise linija. (0.5)

cat >> dz02.dat << EOF
OKOSL
EOF


#!#!#!#!#!#!#
# 3. Pomocu naredbe tee dodajte redak "linux <3" na kraj datoteke iz prosla dva zadatka. (0.5)

echo "linux <3" | tee -a dz02.dat


#!#!#!#!#!#!#
# 4. Sortirajte datoteku korisnici.dat uzlazno po broju ispred imena korisnika
# te rezultat zapisite u datoteku korisnici.sortirano.dat. (0.5)

sort -n korisnici.dat >> korisnici.sortirano.dat

#!#!#!#!#!#!#
# 5. Ispisite sva jedinstvena korisnicka imena iz datoteke korisnici.dat u datoteku
# jedinstveni_korisnici.dat. Racunajte da su imena u datoteci case insensitive. (0.75)

cut -d ":" -f 2 korisnici.dat | sort -f | uniq -u -i > jedinstveni_korisnici.dat 

#!#!#!#!#!#!#
# 6. Ispisite sva nejedinstvena korisnicka imena iz datoteke korisnici.dat u datoteku
# nejedinstveni_korisnici.dat. Racunajte da su imena u datoteci case insensitive. (0.75)

cut -d ":" -f 2 korisnici.dat | sort -f | uniq -d -i > nejedinstveni_korisnici.dat

#!#!#!#!#!#!#
# 7. Prebrojite koliko rijeci iz datoteke /usr/share/dict/words sadrzi tekst ping. (0.5)

grep -Fo "ping" /usr/share/dict/words | wc -l


#!#!#!#!#!#!#
# 8. U datoteku yous.dat izdvojite sve rijeci iz datoteke /usr/share/dict/words
# koje sadrze tekst you. (0.5)

grep -i "you" /usr/share/dict/words >> yous.dat


#!#!#!#!#!#!#
# 9. Prebrojite broj rijeci iz proslog zadatka. (0.50)

grep -i "you" /usr/share/dict/words | wc -l

#!#!#!#!#!#!#
# 10. Udvostrucite sadrzaj datoteke yous.dat. (0.50)

cat yous.dat | tee -a yous.dat

#!#!#!#!#!#!#
# 11. Locirajte datoteku jedinstveni_korisnici.dat koristeci naredbu find. (0.5)

find . | grep "jedinstveni_korisnici.dat"


#!#!#!#!#!#!#
# 12. Locirajte datoteku jedinstveni_korisnici.dat koristeci naredbu locate. (0.5)

locate jedinstveni_korisnici.dat


#!#!#!#!#!#!#
# 13. Koristeci operator | odnosno pipe u datoteku listopad.txt ispisite sve datoteke
# iz svog home direktorija kojima je zadnje vrijeme promjene (eng. modification time)
# bilo u 10. mjesecu. (0.5)

ls -ltr | grep Oct >> listopad.txt

#!#!#!#!#!#!#
# 14. Sortirajte sadrzaj datoteke listopad.txt iz proslog zadatka s obzirom na
# sedmi stupac prema numerickoj vrijednosti brojeva te output preusmjerite u
# datoteku /tmp/sortiran_home.txt. (0.5)

sort -u -k3 listopad.txt >> /tmp/sortiran_home.txt

#!#!#!#!#!#!#
