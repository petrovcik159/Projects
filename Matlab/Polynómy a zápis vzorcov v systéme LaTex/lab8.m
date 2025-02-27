%% lab8.m
% Tasks 2-5.

%% Task 2.
p1 = [-1 6 -5];
p2 = [1 3 0];

pn = conv(p1,p2);
roots_pn = roots(pn);

%% Task 3.
x1 = -4:0.1:4;
x2 = -2:0.1:2;

y1_p1 = polyval(p1,x1);
y1_p2 = polyval(p2,x1);
y1_pn = polyval(pn,x1);

y2_p1 = polyval(p1,x2);
y2_p2 = polyval(p2,x2);
y2_pn = polyval(pn,x2);

figure;

subplot(1,2,1)
plot(x1,y1_p1,x1,y1_p2,x1,y1_pn)
title('Interval <-4, 4>')

subplot(1,2,2)
plot(x2,y2_p1,x2,y2_p2,x2,y2_pn)
title('Interval <-2, 2>')
grid on

%% Task 4.
x1 = -2:0.1:2;
x2 = -2:0.4:2;

y1_pn = polyval(pn,x1);
y2_pn = polyval(pn,x2);

figure
plot(x1,y1_pn)
hold on
stem(x2,y2_pn)
legend
grid on

%% Task 5.
x1 = -2:0.1:2;
x2 = -2:0.4:2;

y1_pn = polyval(pn,x1);
y2_pn = polyval(pn,x2);

dy1_pn = diff(y1_pn) / (x1(2) - x1(1));
dy2_pn = interp1(x1(1:end-1),dy1_pn,x2(1:end-1));

figure 
plot(x1(1:end-1), dy1_pn)
hold on
stem(x2(1:end-1), dy2_pn)
legend
grid on
