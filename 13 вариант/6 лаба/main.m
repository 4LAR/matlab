
%%%% Функции используемые в программе

%a = lab4_1('Введите число: ')
%[a, b] = lab4_2()

%x=0:10;    
%y=sin(x); 
%printtable(x,y)

%c = input_step(a, b);

% x + (1./sin(x))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

func = input('Введите функцию: ', 's');
first = 1;
minFunc = 0;
maxFunc = 0;
[xMax, xMin] = lab4_2();
step = input_step(xMin, xMax);
x_v = xMin:step:xMax;
i = 0;
for x_ = x_v
    i = i + 1;
    y(i) = 0;
    
    % решение интегралла
    eval(strcat('for (x = xMin:step:x_) y(i) = y(i) + ', func, '; end'));
    y(i) = y(i) + step;
    
    % нахождение минимума и максимуа
    %if first == 1
    %    minFunc = y(i);
    %    maxFunc = y(i);
    %    first = 0;
    %elseif y(i) > maxFunc
    %    maxFunc = y(i);
    %elseif y(i) < minFunc
    %    minFunc = y(i);
    %end
    
end

% вывод таблицы
printtable(x_v, y, func)

% вывод графиков
create_chart(x_v, y, xMin, xMax)