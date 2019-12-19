    #!/usr/bin/bash

    #!#!#!#!#!#!#
    # 1. Ispisite sve direktorije u /usr/share ciji naziv zapocinje s gtk. (0.5)

     ls -l /usr/share/gtk*

    #!#!#!#!#!#!#
    # 2. Ispisite sve direktorije u /usr/share koji u nazivu sadrze barem dvije znamenke. (0.5)

     ls -l /usr/share | grep -v "^4888"

    #!#!#!#!#!#!#
    # 3. Pronadite rijeci koje sadrze znamenke (ako ih ima) (0.7)

    egrep "[[:digit:]]+" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 4. Pronadite rijeci koje pocinju slovom i, a u sredini rijeci sadrze veliko slovo. (0.7)
    # Napomena: Radi jednostavnosti, sredina rijeci je definirana kao dio rijeci izmedu prvog
    # i zadnjeg znaka.

    egrep "^i[A-Z][[:alnum:]]+$" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 5. Pronadite rijeci koje ne sadrze samoglasnike. (0.7).
    # Napomena: Samoglasnici su aeiou. Samoglasnici iz drugih jezika se ne ubrajaju.

    egrep "^[^aeiouAEIOU]+$" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 6. Pronadite rijeci u kojima se barem dva samoglasnika pojavljuju jedan za drugim. (0.7)

    egrep "^[[:alnum:]]*[AEIOUaeiou][AEIOUaeiou]+[[:alnum:]]*$" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 7. Prebrojite rijeci koje zavrsavaju na ening. (0.7)

    egrep "ening$" /usr/share/dict/words | wc -l

    #!#!#!#!#!#!#
    # 8. Prebrojite rijeci koje zavrsavaju na 's. (0.7)

    egrep "'s$" /usr/share/dict/words | wc -l

    #!#!#!#!#!#!#
    # 9. Prebrojite rijeci koje zavrsavaju na veliko slovo. (0.7)

    egrep "[A-Z]$" /usr/share/dict/words | wc -l

    #!#!#!#!#!#!#
    # 10. Svim rijecima koje zavrsavaju na 's uklonite znak '. (0.7)

     sed -rn "s/([[:alnum:]]+)(')(s$)/\1\3/p" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 11. Svako pojavljivanje niza word prenesite na pocetak rijeci u kojoj se niz nalazi. (0.7)

    sed -rn "s/(^[[:alnum:]]*)(word)([[:alnum:]]*$)/\2\1\3/p" /usr/share/dict/words

    #!#!#!#!#!#!#
    # 12. Svim rijecima koje pocinju na veliko slovo prvo slovo promijenite u malo,
    # a posljednje promijenite u veliko. (0.7)
    # Primjer: Iowa -> iowA

    sed -rn "s/(^[A-Z])([[:alnum:]]*)([a-z]$)/\L\1\2\U\3/p" /usr/share/dict/words

    #!#!#!#!#!#!#
