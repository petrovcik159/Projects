# Štruktúry v spájanom zozname

## Popis projektu
Tento projekt implementuje dynamický spájaný zoznam na evidenciu študentov v jazyku C. Program umožňuje načítanie, výpis a analýzu údajov o študentoch.

## Použité technológie
- Programovací jazyk: C
- Kompilátor: GCC
- IDE: Code::Blocks (voliteľne)

## Funkcionalita
- Načítanie údajov o študentoch zo súboru `vstup.txt`
- Výpis študentov v CSV formáte
- Vyhľadanie najlepšieho študenta v konkrétnom ročníku
- Uvoľnenie dynamicky alokovanej pamäte

## Použitie

1. Vytvorte súbor `vstup.txt` s údajmi o študentoch (priezvisko, meno, ročník, priemer).
2. Skopírujte zdrojový kód do súboru `studenti_spajany_zoznam.c` a skompilujte pomocou:
   ```bash
   gcc studenti_spajany_zoznam.c -o studenti_spajany_zoznam
   ```
3. Spustite program:
   ```bash
   ./studenti_spajany_zoznam
   ```
4. Program zobrazí zoznam študentov, nájde najlepšieho študenta v zadanom ročníku a uvoľní alokovanú pamäť.

## Autor
Projekt bol vypracovaný v rámci štúdia ako súčasť cvičenia z algoritmizácie a programovania.
