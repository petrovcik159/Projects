%% play with random signals
clear ;
clc ;
format compact ;

%% Exercise 3:
% Using your implementation of the function [ Ru, Ri, Rn ] = random( [ a b ], [ M N ], flag ) 
% generate a matrix Ru of pseudo random values from a uniform distribution
% and a matrix Ri of pseudo random integer values from a uniform distribution
% and a matrix Rn of random values from a normal distribution.
% Let the size of all matrices be MxN.
% Let the mean value of Rn be m = 8 and variance v = 3.
% Let the values of Ru an Ri be from the interval <a,b> = <4,9>
% Run this section several times to observe that each time
% different matrices will be generated. 

M = 5 ;
N = 10 ;

m = 8 ;
v = 3 ;

a = 4 ;
b = 9 ;


Rn = m + sqrt(v) * randn(M, N);
Ru = a + (b - a) * rand(M, N);
Ri = randi([a, b], M, N);

% Calculate the sample mean and variance of all pseudo random matrices:

%   a) for each column 
%   b) for the whole matrix
Mna = mean(Rn);
Mnb = mean(Rn);

Vna = var(Rn);
Vnb = var(Rn);

Mua = mean(Ru);
Mub = mean(Ru);

Vua = var(Ru);
Vub = var(Ru);

Mia = mean(Ri);
Mib = mean(Ri);

Via = var(Ri);
Vib = var(Ri);

%% Exercise 4:
% Generate a pseudo random column vector V of varying length N
% and constant mean and variance m = 10, v = 3.
% For each vector length N calculate sample mean ms and variance vs
% and for each calculated ms and vs calculate their relative errors in
% per cent.
% Run this section several times to observe slightly different results each
% time.

m = 10;
v = 3;

for N = [1 2 5 10.^[1 : 5]]
    V = m + sqrt(v) * randn(N, 1);
    ms = mean(V);
    vs = var(V);
    mean_error = abs(ms - m) / m;
    variance_error = abs(vs - v) / v;

    fprintf("Vector length N: %6d, mean: %10.6f, variance: %10.6f, mean error: %10.6f%%, variance error: %10.6f%% \n", ...
            N, ms, vs, mean_error, variance_error);
end

%% Exercise 5:
% Generate values of a linear function f(x) = ax + b for the x variable 
% taking on values from the interval <-4,10> with step 0.1.
% Create two noisy copies: Y1, and Y2 by adding pseudo-random noise from normal
% distribution: one with a variance v1 = 0.1, the other with v2 = 1
% Use the plot(), subplot() and scatter() function to plot three plots
% side-by-side: first the noiseless linear function f(x), second the
% scattered noisy observations Y1, and finally scattered observations
% of the more noise degraded signal Y2.

alpha = 0.5;
beta = 2;

v1 = 0.1;  
v2 = 1;    
s = 0.5;

X = -4:0.1:10;  
FX = alpha * X + beta;  

N1 = sqrt(v1)* s * randn(size(X));  
N2 = sqrt(v2)* s * randn(size(X)); 

Y1 = FX + N1;
Y2 = FX + N2;

figure;

subplot(1, 3, 1);
plot(X, FX, 'LineWidth', 1);
title('Čistá lineárna funkcia');
xlabel('x');
ylabel('f(x)');
grid on;

subplot(1, 3, 2);
scatter(X, Y1, 5, 'b');
title('Zašumený priebeh Y1 (v1=0.1)');
xlabel('x');
ylabel('Y1');
grid on;

subplot(1, 3, 3);
scatter(X, Y2, 5, 'b');
title('Zašumený priebeh Y2 (v2=1)');
xlabel('x');
ylabel('Y2');
grid on;
