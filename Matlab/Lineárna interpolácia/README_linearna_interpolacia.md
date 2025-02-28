# Lineárna interpolácia a regresia

## Popis projektu
Projekt implementuje výpočet lineárnej interpolácie a lineárnej regresie v MATLABe bez použitia cyklov a špecifických toolbox funkcií. Obsahuje výpočet interpolovaných hodnôt, generovanie pseudo-náhodných matíc a analýzu zašumených dát.  
Na dokumentáciu matematických vzorcov sa využíva formátovanie v **LaTeX**.

## Použité technológie
- **Programovací jazyk:** MATLAB  
- **Obmedzenia:**  
  - Nie sú povolené cykly (for, while)  
  - Zakázané použitie `polyfit()`, operátora `\` a symbolického toolboxu  
  - Povinné použitie vektorových operácií  
- **Formátovanie vzorcov:** LaTeX  

## Funkcionalita
- **Lineárna interpolácia**  
  - `linterpCoef(p1, p2)`: Výpočet koeficientov \( a \) a \( b \) pre priamku \( f(x) = ax + b \) prechádzajúcu bodmi \( p_1 \) a \( p_2 \).  
  - `linterp(a, b, Xl, n)`: Výpočet interpolovaných hodnôt v danom intervale s rozdelením na \( n \) podintervalov.  
  - **Testovanie interpolácie** pomocou `lin_interpolation.m`.  

- **Generovanie náhodných matíc**  
  - `random(Lim, Si, flag)`: Generovanie pseudo-náhodných matíc s rovnomerným alebo normálnym rozdelením.  
  - Výpočet výberového priemeru a variancie pre náhodné matice.  

- **Zašumené dáta a lineárna regresia**  
  - `noisyLinear(alpha, beta, Xl, step, v)`: Generovanie lineárnych dát so šumom.  
  - Výpočet regresných koeficientov \( \alpha \) a \( \beta \) metódou priemerov a kovariancie:  
    \[
    \beta = \frac{s_{xy}}{s_x^2}, \quad \alpha = \bar{y} - \beta \bar{x}
    \]
  - Porovnanie výsledkov s `polyfit()` a operátorom `\`.  
  - **Koeficient determinácie** \( R^2 \) na vyhodnotenie presnosti modelu:  
    \[
    R^2 = 1 - \frac{\sum (y_i - \hat{y_i})^2}{\sum (y_i - \bar{y})^2}
    \]
  - **Vizualizácia dát** pomocou `plot()`, `scatter()`, `subplot()`.  
  - **Analýza reziduí** a ich histogram.  

## Autor
Projekt bol vypracovaný v rámci štúdia ako súčasť cvičenia z digitálnej gramotnosti.
