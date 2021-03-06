function out = f1(x_)
    if x_ < -3 || x_ > 0
        error('х должен лежать на интервале [-3, 0]')
    else

        dx = 0.0005; % Шаг интегрирования
        e = 0.00002; % «Точность» ε 
        if x_ < -2 % на промежутке от -3 до -2
            out = -1;
        elseif x_ < -1 % на промежутке от -2 до -1
            % код для расчитывания интегралла методом прямоугольников
            out = 0;
            for z = -2:dx:x_
                out = out + z + (1./sin(z));
            end
            out = out * dx;
        else % на промежутке от -1 до 0
            % код для рассчитывания сумы
            out = -1;
            n = 0;
            x_n = x_;
%             factI = 1;
%             xPow = x_;
            while abs(x_n) >= e
                %x_n = xPow ./ factI;
                out = out + x_n;
                n = n + 1;
                %xPow = xPow .* (x_ ^ (2 .* n + 1));
                %fact = 1;
                %for j = 1:(2 .* n)
                %    fact = fact * j;
                %end
                %factI = factI .* fact;
                x_n = x_n .* x_ ^ 2/ ((4 .* n) .^ 2 - 2 .* n);
            end
        end
    end
end