# RWA-HOMEWORK-2
Fakultet elektrotehnike
Razvoj web aplikacija 


Zadaća 2 - 18 bodova


Koristeći statičke html stranice kreirane u prethodnoj zadaći kao osnovu (user interface), implementirati dinamičko ponašanje UI elemenata na sljedeći način:

Home page

1) Prilikom učitavanja početne stranice prikazati dva random videa iz baze podataka*

2) Klikom na dugme “vote” ispod jednog od videa, daje se pozitivan glas datom videu i Ajax-om se snima podatak u bazu (inkrementira broj pozitivnih glasova) kao i generiše novi slučajni par videa za glasanje. Prilikom glasanja jedan video dobija pozitivan glas a drugi negativan (negativan, odnosno inkrementira se ukupan broj glasova a ne inkrementira se broj pozitivnih glasova). Ovaj proces se može ciklično ponavljati proizvoljan broj puta. (za serijalizaciju Java objekata može se koristiti biblioteka poput https://github.com/google/gson)

3) Mini ranking tabela (Top 5 videos) se generiše na serveru i prikazuje prilikom inicijalnog ispisivanja stranice, nije potrebno da se osvježava Ajax-om ukoliko neki od videa u koraku 2) dospiju na istu ili promijene stanje a već su prikazani na listi. Mini ranking tabela se osvježava ponovnim učitavanjem kompletne stranice (page refresh). Mini ranking tabela je identična tabeli prikazanoj na rankings stranici po sadržaju, s tom razlikom da je ograničena na prikaz prvih 5 videa.

4) Ukoliko korisnik ne želi da glasa za prikazani par, klikom na “refresh” dugme treba da se Ajax-om prikaže novi par videa.

5) Klikom na dugme “share” potrebno je prikazati listu socijalnih mreza (npr. Twitter ili samo “copy to clipboard” da bi se mogao paste link) i omogućiti korisniku da podijeli link na trenutno prikazani par videa (Ovaj korak je opcionalan za implementaciju).

Rankings page

6) Prikazati kompletnu ranking tabelu svih videa dostupnih u bazi sa osnovnim podacima: naziv, opis, broj glasova (pozitivnih i ukupno) za dati video, rank. Rank računati prema objašnjenju datom u sljedećem članku: http://www.evanmiller.org/how-not-to-sort-by-average-rating.html (konkretno za metod ci_lower_bound(pos, n, confidence), prilikom prepisivanja u Java ili SQL, u zavisnosti od toga u kojem domenu odlučite računati rank, uzeti da je 
confidence = 0.95 a 
z = 1.96
n je ukupan broj glasova za jedan video a pos broj pozitivnih glasova.

7) Potrebno je prikazati 20 videa po stranici i barem 2 stranice tako da pager bude funkcionalan

8) Generisati 100000 videa i analizirati ponašanje korisničkog interfejsa sa aspekta performansi. Da li je potrebno poboljšati performanse sa porastom broja zapisa u bazi i, ako jeste, na koji način?

* Napisati konzolnu aplikaciju koja generiše podatke o videima i popunjava bazu podataka.. Dovoljno je uzeti 10ak stvarnih YouTube videa i ponavljati isti medijski sadržaj za različita generisana videa (npr ako se generiše 100 videa, svaki video treba da ima različit naziv npr “naziv 1”, “naziv2” itd. ali iz praktičnih razloga svaki 10. Video može da dijeli YouTube id/embed code kao i prateće thumbnail sličice.). Za generisanje teksta može se koristiti https://github.com/DiUS/java-faker ili slična biblioteka.





Obavezno je, uz implementaciju zadatka, uploadovati (na GDrive) i podijeliti link na gif video/animaciju korištenja osnovnih funkcionalnosti projekta spram onog što je traženo u zadatku (u trajanju ne dužem od 60s). Za kreiranje gif videa možete koristiti alat poput https://www.cockos.com/licecap/ (Win/Mac) ili neki Linux ekvivalent. 


