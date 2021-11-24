
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

dx = 0.0005; % Шаг интегрирования

func = input('Введите функцию: ', 's');

[xMax, xMin] = lab4_2();
step = input_step(xMin, xMax);
%step = 0.01;
x_v = xMin:step:xMax;
i = 0;
for x_ = x_v
    i = i + 1;
    y(i) = 0;
    for x = xMin:dx:x_
        y(i) = y(i) + eval(func);
    end
    y(i) = y(i) * dx;
end
printtable(x_v, y)

plot(x_v, y)