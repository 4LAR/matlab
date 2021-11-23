
%%%% Функции используемые в программе

%a = lab4_1('Введите число: ')
%[a, b] = lab4_2()

%x=0:10;    
%y=sin(x); 
%printtable(x,y)

%c = input_step(a, b);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

func = input('Введите функцию: ', 's');

[xMax, xMin] = lab4_2();
step = input_step(xMin, xMax);
%step = 0.01;
x_v = xMin:step:xMax;
i = 0;
for x = x_v
    i = i + 1;
    y(i) = eval(func);
end
printtable(x_v, y)

plot(x_v, y)