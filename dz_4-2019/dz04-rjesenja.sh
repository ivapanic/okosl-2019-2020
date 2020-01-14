#!/usr/bin/bash

# Obavezno prije rjesavanja detaljno procitajte pdf datoteku zadace kao i upute za
# rjesavanje domacih zadaca u repozitoriju kolegija!

# Rjesenja podzadataka 2-6 potrebno je upisati u datoteku stvorenu u podzadatku 1,
# svako rjesenje u novi red.  Svi podzadaci odnose se na trenutnog korisnika.
# Podzadatke treba rijesiti dinamicki - nije dozvoljeno samo ”hardkodirati” ime korisnika.

#!#!#!#!#!#!#
# 1. Kreirajte datoteku imenovanu kao korisnik koji trenutacno koristi terminal. (0.5)

touch $(whoami)

#!#!#!#!#!#!#
# 2. Upisite korisnikovo ime u datoteku (ne pravo ime nego korisnicko ime). (0.5)

echo $(whoami) >> $(whoami)

#!#!#!#!#!#!#
# 3. Upisite putanju korisnikovog maticnog direktorija. (0.5)

echo $HOME >> $(whoami)

#!#!#!#!#!#!#
# 4. Upisite korisnikovu ljusku. (0.5)

echo $SHELL >> $(whoami)

#!#!#!#!#!#!#
# 5. Upisite grupe kojima korisnik pripada. (0.5)

echo $(groups) >> $(whoami)

#!#!#!#!#!#!#
# 6. Upisite samo korisnikovu primarnu grupu. (0.5)

id -gn >> $(whoami)

#!#!#!#!#!#!#
# 7. Izbrisite datoteku iz prethodnih podzadataka. (0.5)

rm $(whoami)

#!#!#!#!#!#!#
# 8. Kreirajte novog korisnika weakling. (0.5)

sudo adduser weakling

#!#!#!#!#!#!#
# 9. Omogucite korisniku weakling privremeno dobivanje administrativnih ovlasti. (0.75)

sudo usermod -aG sudo weakling

#!#!#!#!#!#!#
# 10. "Prebacite se" u korisnika weakling - prijavite se u ljusku kao taj korisnik,
# i to u njegov maticni direktorij i s njegovim varijablama okruzenja (0.5)

su weakling | cd

#!#!#!#!#!#!#
# 11. Bez promjene direktorija, stvorite novu praznu datoteku u /tmp.
# Datoteku nazovite samo-ja. (0.5)

touch /tmp/samo-ja

#!#!#!#!#!#!#
# 12. Pobrinite se da s datotekom samo-ja nitko (ni grupa ni ostali) ne smije nista ciniti,
# osim vlasnika koji ju smije samo citati. (0.5)

 chmod a-rwx /tmp/samo-ja | chmod u+r /tmp/samo-ja

#!#!#!#!#!#!#
# 13. Bez promjene ostalih dozvola, omogucite ostalim korisnicima
# da u datoteku samo-ja mogu pisati (0.5)

chmod o+w /tmp/samo-ja

#!#!#!#!#!#!#
# 14. Ispisite vlasnika-grupu datoteke samo-ja. (0.25)

ls -l /tmp/samo-ja | awk '{print $3 "-" $4}'

#!#!#!#!#!#!#
# 15. Odjavite se iz korisnika weakling. (0.50)

exit

#!#!#!#!#!#!#
# 16. Izbrisite korisnika weakling, i pobrinite se da i njegov maticni direktorij
# bude takoder obrisan (0.5)

sudo userdel weakling | sudo rm -r /home/weakling

#!#!#!#!#!#!#
