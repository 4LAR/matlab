% Задание 2
% Первое из возвращаемых функци чисел не равно второму и делится на него без остатка 

function [out1, out2] = lab4_2()
    ok = 0;
    while ok ~= 1
        inp1 = lab4_1('Введите первое число: ');
        inp2 = lab4_1('Введите второе число: ');
        if inp1 == inp2
            disp('Числа одинаковые')
        elseif mod(inp1, inp2) ~= 0
            disp('Числа делятся с остатком')
        else
            ok = 1;
        end
    end
    
    out1 = inp1;
    out2 = inp2;
    
end