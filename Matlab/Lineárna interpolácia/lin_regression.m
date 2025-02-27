%% play with random signals
clear ;
clc ;
format compact ;


%% Exercise 5:
% Copy your working code from FINAL = PART A

alpha	= 2;
beta	= 0.5;
s	= 0.5;

v1 = 0.1;
v2 = 1;

X = -4:0.1:10;  
FX = alpha * X + beta;  

N1 = sqrt(v1)* s * randn(size(X));  
N2 = sqrt(v2)* s * randn(size(X)); 

Y1 = FX + N1;
Y2 = FX + N2;

figure;
subplot(1, 3, 1);
plot(X, FX, 'LineWidth', 2);
title('Lineárna funkcia');
xlabel('x');
ylabel('f(x)');
grid on;

subplot(1, 3, 2);
scatter(X, Y1, 25, 'b');
title('Priebeh Y1 (v1=0.1)');
xlabel('x');
ylabel('Y1');
grid on;

subplot(1, 3, 3);
scatter(X, Y2, 25, 'b');
title('Priebeh Y2 (v2=1)');
xlabel('x');
ylabel('Y2');
grid on;

%% Exercise 6: implement the linreg() function in a separate linreg.m file.

% %% Exercise 7:
% % For the X coordinates and both noisy datasets Y1, Y2 from EX.4 find the
% % coeficients alpha, beta of the simple linear regression:
% %  a) using your function linreg
% %  b) using the MATLAB function polyfit
% %  c) using the \ operator.
% 
% % Insert code below: calling the linreg() function 
% [ alpha1, beta1 ] = linreg( X, Y1 )
% linreg( X, Y2 )
% % Insert code below: using a toolbox function
% polyfit
% 
% % Insert code below: using the \ operator

[alpha1, beta1] = linreg(X, Y1);
[alpha2, beta2] = linreg(X, Y2);

p1 = polyfit(X, Y1, 1);
p2 = polyfit(X, Y2, 1);

coeff1 = [X(:), ones(size(X(:)))] \ Y1(:);
coeff2 = [X(:), ones(size(X(:)))] \ Y2(:);


%% Exercise 8:
% Use the polyval() function to find the data yf1 and yf2 for both noisy
% datasets y1 and y2 using the previously found linear regression 
% coefficients alpha, beta for the x vector defined in E4. 
% Use the plot(), subplot() and scatter() functions to plot
% three plots side by side:
%   1. The noisy data y1 along with the fitted linear function values yf1.
%   2. The noisy data y2 along with the fittel linear function values yf2.
%   3. The linear fitted values yf1 and yf2.

yf1 = polyval(p1, X);
yf2 = polyval(p2, X);

figure;
scatter(X, Y1, 25, 'blue');
hold on;
plot(X, yf1, 'r', 'LineWidth',2);
hold off;
title('Y1');
xlabel('x');
ylabel('Y2');
grid on;

figure;
scatter(X, Y2, 25, 'blue');
hold on;
plot(X, yf2, 'r', 'LineWidth',2);
hold off;
title('Y2');
xlabel('x');
ylabel('Y2');
grid on;

figure;
plot(X, yf1, 'b', 'LineWidth',2);
hold on;
plot(X, yf2, 'r', 'LineWidth',2);
hold off;
xlabel('x');
ylabel('f(x)');
grid on;



%% Exercise 9:
% Implement the body of the function r_squared() in file r_squared.m 
% Do not modify the following code:

Rsq11 = r_squared( Y1, yf1 );
Rsq12 = r_squared( Y1, yf2 );

if Rsq11 > Rsq12
	disp('As expected, fit1 better represents dataset 1') ;
else
	disp('fit2 better represents dataset 1. strange.')
end

Rsq21 = r_squared( Y2, yf1 );
Rsq22 = r_squared( Y2, yf2 );

if Rsq22 > Rsq21
	disp('As expected, fit2 better represents dataset 2') ;
else
	disp('fit1 better represents dataset 2. strange.')
end

%% Exercise 10:
% For the second fit Yf2 and know values Y2, calculate residuals and 
% plot them using the scatter() function. Also use the hist() 
% function to calculate and plot the histogram of the residuals.

residual1 = Y1 - yf1;
residual2 = Y2 - yf2;

figure;
stem(X, residual1, 'b', 'LineWidth', 1.5);
hold on;
plot(X,zeros(size(X)), 'k--');
hold off;
title('Rezidua Y1');
xlabel('x');
ylabel('Rezidua');
grid on;

figure;
scatter(X, residual2, 25, 'r', 'filled');
hold on;
plot(X,zeros(size(X)), 'k--');
hold off;
title('Rezidua Y2');
xlabel('x');
ylabel('Rezidua');
grid on;

figure;
histogram(residual2, 'FaceColor','b', 'BinWidth', 0.2, 'Normalization', 'probability');
title('Histogram rezidua Y2');
xlabel('Hodnota rezudii');
ylabel('Frekvenica');
grid on;
