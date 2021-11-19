clear all
clc

%lab4_1('Введите число: ')
%[a, b] = lab4_2()

%x=0:10; 
%y=sin(x); 
%printtable(x,y)

func = input('Введите функцию: ', 's');

[xMin, xMax] = lab4_2();
x_v = xMax:0.01:xMin;
i = 0;
for x = x_v
    i = i + 1;
    y(i) = str2num(func);
    disp(y(i))
end

plot(x, y)