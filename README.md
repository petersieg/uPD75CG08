# uPD75CG08

Anfang 2018 konnte ich über ebay günstig solche CPU's bekommen.

![Bild](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08.jpg)

Meine Versuche etwas damit zu machen als sie nur als Deko in die Vitrine zu stellen, möchte ich hier inkl. lokalisierten Unterlagen sammeln.

Bei der uPD7500 Serie von NEC handelt es sich um 4-bit CPU's mit vielen I/O Ports und sehr geringer Stromaufnahme. Ich fand Hinweise darauf, das sie z.B. in einer Steuerung im Mazda RX-7 eingesetzt wurden.

Der 75CG08 kann sein ROM piggypack (4k - 2732) tragen.

Als Assembler eignet sich die neueste Beta des Arnold Assemblers:

http://john.ccac.rwth-aachen.de:8000/as/

Die Idee ist es zuerst, die CPU mit Strom und R (82k) + C (33pf)  zur Takterzeugung zu beschalten und als ROM Ersatz eine NOP (8x0) Schaltung an D0-D7 zu legen. Wenn sich die CPU dann wie andere 8-bitter verhält, sollten die Adressen am Rom hochgezählt werden, was man z.B. mit einem Oszilloskop darstellen kann.

Sollte das so funktionieren, soll ein kleines Programm im Eprom z.B. an Output Port 3 von 0-F hochzählen (was man wieder mit dem Oszi oder z.B. TIL311 darstellen kann).

---

Eine freundlicherweise mitgelieferte Platine unbekannter Herkunft, zeigte zumindest schon einmal Lebenszeichen am Oszi+LED mit ei
nem NOP (0x0) an D0-D7 (hier über 10k SIL Widerstände). Die LED hängt an A11 mit der Kathode.

![Oszi](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08%2BNOP%2BOszi.JPG)

![Platine](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08-Platine%2BNOP.JPG)

Und nun läuft der NOP Generator auch auf Lochraster mit R+C Glied zwischen CL1+CL2. X1 muss auf GND sein. INT1 hatte ich ebenfalls auf GND gelegt.

![LR-Oszi](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08-LR-Oszi.JPG)

Lochrasteraufbau von oben:

![LR-TOP](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08-LR-TOP.JPG)

Lochrasteraufbau von unten mit R+C Glied, 10k Reset an GND, X1 an GND und INT1 an GND (graues Kabel:
)
![LR-BOT](https://github.com/petersieg/uPD75CG08/blob/master/uPD75CG08-LR-BOT.JPG)

Lochrasteraufbau mit 4x LED+Vorwiderstand an Port 3:

![LR-LED](https://github.com/petersieg/uPD75CG08/blob/master/LR-Aufbau.JPG)

Die Datei uPD75CG08.zip enthält Eagle Layout und Gerber für Elecrow/JCL.

Bild der Platine (zw. GND und VCC sollte noch ein 100nF Abblockkondensator). Resettaster zw. Pin-18 und VCC/+5V:

![PCB](https://github.com/petersieg/uPD75CG08/blob/master/jclpcb.png)

Super simmples Testprogramm ist in test4.asm.

Wie man ein 28C16 anstatt 2732 nimmt steht im gleichnamigen PDF.

