
clc % чистим терминал
clear all % удалаем все переменные с рабочей области

dx = 0.001; % Шаг интегрирования
e = 0.0001; % «Точность» ε 

x = 0:0.01:4; % задаём диапазон от 0 до 4 с шагом 0.01

i = 0;
for x_ = x % запускаем цикл с диапазоном x (8 строка)
    i = i + 1;
    if x_ < 2 % на промежутке от 0 до 2
        y(i) = -1;
    elseif x_ < 3 % на промежутке от 2 до-3
        % код для расчитывания интегралла методом прямоугольников
        y(i) = -1;
        for z = 2:dx:x_
            y(i) = y(i) + (2 .* z - 1);
        end
        y(i) = y(i) * dx;
    else % на промежутке от 3 до 4
        % код для рассчитывания сумы
        y(i) = 2;
        n = 0;
        x_n = 2 .* e;
        factI = 1;
        xPow = 1;
        while abs(x_n) >= e
            x_n = xPow ./ factI;
            y(i) = y(i) + x_n;
            n = n + 1;
            xPow = xPow .* ( ( x_ - 2) .^ n );
            factI = factI .* n;
        end
    end
end

% рисуем график
plot(x,y) 
xlabel("x") 
ylabel("y") 
grid on 
