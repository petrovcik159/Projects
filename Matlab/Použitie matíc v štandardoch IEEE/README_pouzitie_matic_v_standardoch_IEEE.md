# Použitie matíc v štandardoch IEEE

## Popis projektu
Projekt sa zameriava na implementáciu operácií s maticami v súlade s modernými IEEE štandardmi, konkrétne pri spracovaní LDPC kódov pre WiFi-6.

## Použité technológie
- Programovací jazyk: MATLAB
- Obmedzenia: Bez použitia cyklov (for, while) a funkcií horzcat(), vertcat(), transpose()
- Implementované funkcie: `rotateRight`, `cyclicShiftMatrix`, `WIFI6_LDPC_ExpandH`, `encodeLDPC`

## Funkcionalita
- Cyklický posun vektorov (ROR, ROL)
- Generovanie permutačnej matice na základe cyklického posunu
- Expanzia modelovej matice LDPC na binárnu riedku maticu
- Priame kódovanie binárnych vektorov pomocou submatíc matice H

## Autor
Projekt bol vypracovaný v rámci štúdia ako súčasť cvičenia z algoritmizácie a práce s maticami v IEEE štandardoch.
