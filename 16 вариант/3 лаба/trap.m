clear all
clc
e = 0.00005; % «Точность» ε 
dx = 0.0002;
x = -2:0.01:2; % задаём диапазон от -2 до 2 с шагом 0.01
R = 1;
i = 0;
for x_ = x % запускаем цикл с диапазоном x (8 строка)
    i = i + 1;
    if x_ < -1 % на промежутке от -2 до -1
        y(i) = 1;
    elseif x_ < 1 % на промежутке от -1 до 1
        % код для расчитывания интегралла методом прямоугольников
        y(i) = (2 * cos(x_) + x_ * tan(x_));
        F = 0;
        m = 101;
        while m <= length(y)
            F = F + (x(m) - x(m - 1)) * x_ * (y(m) + y(m - 1))
            m = m + 1;
        end
        y(i) = F;
        %y(i) = trapz((-1:dx:x_), y(i));
        %y(i) = quad('(2 .* cos(x_) + x_ .* tan(x_))', -1, x_, dx)
    else % на промежутке от 1 до 2
        % код для рассчитывания сумы
        y(i) = sin(x_);
        n = 0;
        x_n = 2 .* e;
        factI = 1;
        xPow = 1;
        while abs(x_n) >= e
            x_n = xPow ./ factI;
            y(i) = y(i) + x_n;
            n = n + 1;
            xPow = xPow .* (((-1) .^ n) .* x_n .^ (x_n .* n) );
            fact = 1;
            for j = 1:(2 .* n)
                fact = fact * j;
            end
            factI = factI .* fact;
        end
    end
end

% рисуем график
plot(x,y) 
xlabel("x") 
ylabel("y") 
grid on 