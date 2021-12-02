
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

%dx = 0.0005; % Шаг интегрирования
% x + (1./sin(x))
func = input('Введите функцию: ', 's');
first = 1;
minFunc = 0;
maxFunc = 0;
[xMax, xMin] = lab4_2();
step = input_step(xMin, xMax);
%step = 0.01;
x_v = xMin:step:xMax;
i = 0;
for x_ = x_v
    i = i + 1;
    y(i) = 0;
    %for (x = xMin:dx:x_) 
    %    y(i) = y(i) + eval(func); 
    %end
    eval(strcat('for (x = xMin:step:x_) y(i) = y(i) + ', func, '; end'));
    y(i) = y(i) + step;
    if first == 1
        minFunc = y(i);
        maxFunc = y(i);
        first = 0;
    elseif y(i) > maxFunc
        maxFunc = y(i);
    elseif y(i) < minFunc
        minFunc = y(i);
    end
    
end

%disp(maxFunc)
%disp(minFunc)

printtable(x_v, y, func)

%plot(x_v, y)

create_chart(x_v, y, minFunc, maxFunc, xMin, xMax)
grid on