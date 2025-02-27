%% Peter Petrovčik IKT-6

%% 1.Úloha
clear all;
close all;
clc;
disp('Zadanie 1.');

A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
[S1,S2,S3,S4,S5,S6] = foo(A);
B = bar(S1,S2,S3,S4,S5,S6);

Vysledok = isequal(B, A');
Vysledok

disp('Matica B:'); 
disp(B);
disp('Transponovaná matica A:'); 
disp(A');

%% 2.Úloha
clear all;
close all;
clc;
disp('Zadanie 2.');

interval = [1,10];
dimensions = [3,4];
R = random(interval, dimensions);

disp('Vygenerovaná random matica R:')
disp(R);

%% 2a.Úloha
clear all;
close all;
clc;
disp('Zadanie 2a.');

[A_test, E, F] = testRandom();
Vysledok = isequal(A_test * E, F);
Vysledok

%% 3.Úloha
clear all;
close all;
clc;
disp('Zadanie 3a, b, c, d.');

% 3a.úloha
[A11,A12,A21,A22] = genA();
[B11,B21] = genB();
[C11,C21] = mulPP(A11,A12,A21,A22,B11,B21);

disp('Matica C11:'); 
disp(C11);
disp('Matica C21: '); 
disp(C21);

% 3b.úloha
A = [A11,A12; A21,A22];
B = [B11; B21];

% 3c.úloha
C = A*B;
[C11,C21] = mulPP(A11,A12,A21,A22,B11,B21);
C2 = [C11; C21];

% 3d.úloha
Vysledok = isequal(C,C2);
Vysledok


% Výstupy
disp('Matica C: ');
disp(C);
disp('Matica C2');
disp(C2);

%% FUNKCIE %%

%% Funkcie prvá úloha
%Rozdelenie 
function [S1,S2,S3,S4,S5,S6] = foo(A)
    S1 = A(1, 1:3);
    S2 = A(1, 4);
    S3 = A(2:3, 2:3);
    S4 = A(2:4, 1);
    S5 = A(4, 2:3);
    S6 = A(1:4, 4);
end

%Transpozícia
function B = bar(S1,S2,S3,S4,S5,S6)
    B = zeros(4);
    B(1, 1:3) = S1;
    B(1, 4) = S2;
    B(2:3, 2:3) = S3;
    B(2:4, 1) = S4;
    B(4, 2:3) = S5;
    B(1:4, 4) = S6;
end

%% Funkcie úloh 2 a 2a
%Generovanie náhodných čísel
function R = random(interval, dimensions)
    a = interval(1);
    b = interval(2);
    randValues = rand(dimensions);
    R = floor(randValues * (b-a+1))+a;
end

%Testovanie random
function [A,E,F] = testRandom()
       A = random([1,3], [4,4]);

    b = random([1,3], [4,1]);
    c = random([3,6], [4,1]);
    d = random([6,9], [4,1]);

    B = A*b;
    C = A*c;
    D = A*d;

    F = [B,C,D];
    E = [b,c,d];
end

%% Funkcie pre 3.Úlohu a, b, c, d
%Generovanie matíc A11 až A22
function [A11,A12,A21,A22] = genA()
    A11 = ones(3,4);
    A12 = 2*ones(3,2);
    A21 = 3*ones(2,4);
    A22 = 4*ones(2,2);
end

%Generovanie matíc B11 a B21
function [B11,B21] = genB()
    B11 = 5*ones(4,3);
    B21 = 6*ones(2,3);
end

%Blokové násobenie matíc
function [C11,C21] = mulPP(A11,A12,A21,A22,B11,B21)
    C11 = A11*B11 + A12*B21;
    C21 = A21*B11 + A22*B21;
end
