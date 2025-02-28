# Dynamická práca s maticami

## Popis projektu
Tento projekt implementuje dynamickú alokáciu matíc ľubovoľnej veľkosti v jazyku C. Program načíta maticu zo súboru, vykoná analýzu jej obsahu a vypíše výsledky.

## Použité technológie
- Programovací jazyk: C
- Kompilátor: GCC
- IDE: Code::Blocks (voliteľne)

## Funkcionalita
- Dynamická alokácia matice na základe údajov zo súboru `vstup.txt`
- Vyhľadanie maximálnej hodnoty v matici a jej súradníc
- Výpis matice v požadovanom formáte
- Uvoľnenie dynamicky alokovanej pamäte

## Použitie

1. Vytvorte súbor `vstup.txt` s prvým riadkom obsahujúcim počet riadkov a stĺpcov, následne so zoznamom čísel predstavujúcich maticu.
2. Skopírujte zdrojový kód do súboru `dvojrozmerna_matica.c` a skompilujte pomocou:
   ```bash
   gcc dvojrozmerna_matica.c -o dvojrozmerna_matica
   ```
3. Spustite program:
   ```bash
   ./dvojrozmerna_matica
   ```
4. Program zobrazí načítanú maticu, maximálnu hodnotu a jej pozíciu.

## Autor
Projekt bol vypracovaný v rámci štúdia ako súčasť cvičenia z algoritmizácie a programovania.
