# Štruktúry v poli

## Popis projektu
Tento projekt implementuje prácu so štruktúrami v poli v jazyku C. Program umožňuje načítanie údajov o študentoch, ich výpis a analýzu.

## Použité technológie
- Programovací jazyk: C
- Kompilátor: GCC
- IDE: Code::Blocks (voliteľne)

## Funkcionalita
- Načítanie údajov o študentoch zo súboru `vstup.txt`
- Výpis študentov v CSV formáte
- Vyhľadanie najlepšieho študenta v konkrétnom ročníku

## Použitie

1. Vytvorte súbor `vstup.txt` s údajmi o študentoch (priezvisko, meno, ročník, priemer).
2. Skopírujte zdrojový kód do súboru `studenti_pole.c` a skompilujte pomocou:
   ```bash
   gcc studenti_pole.c -o studenti_pole
   ```
3. Spustite program:
   ```bash
   ./studenti_pole
   ```
4. Program zobrazí zoznam študentov a nájde najlepšieho študenta v zadanom ročníku.

## Autor
Projekt bol vypracovaný v rámci štúdia ako súčasť cvičenia z algoritmizácie a programovania.
