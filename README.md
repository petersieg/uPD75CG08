# uPD75CG08

Anfang 2018 konnte ich über ebay günstig solche CPU's bekommen.

Etwas damit zu machen als sie nur als Deko in die Vitrine zu stellen, möchte ich hier inkl. lokalisierten Unterlagen sammeln.

Bei der uPD7500 Serie von NEC handelt es sich um 4-bit CPU's mit vielen I/O Ports und sehr geringer Stromaufnahme. Ich fand Hinweise darauf, das sie z.B. in einer Steuerung im Mazda RX-7 eingesetzt wurden.

Der 75CG08 kann sein ROM piggypack (4k - 2732) tragen.

Als Assembler eignet sich die neueste Beta des Arnold Assemblers:

http://john.ccac.rwth-aachen.de:8000/as/

Die Idee ist es zuerst, die CPU mit Strom und R (82k) + C (33pf)  zur Takterzeugung zu beschalten und als ROM Ersatz eine NOP (8x0) Schaltung an D0-D7 zu legen. Wenn sich die CPU dann wie andere 8-bitter verhält, sollten die Adressen am Rom hochgezählt werden, was man z.B. mit einem Oszilloskop darstellen kann.

Sollte das so funktionieren, soll ein kleines Programm im Eprom z.B. an Output Port 3 von 0-F hochzählen (was man wieder mit dem Oszi oder z.B. TIL311 darstellen kann).
