% Задание *
% Ввод шага интегррирования пользователем, проверка на вещественное число

function out = input_step(xMin, xMax)
    ok = 0;
    while ok ~= 1
        inp = input('Введите шаг: ', 's');
        if length(inp) < 1
            continue
        end
        point = strfind(inp, ',');
        if point > 0
           inp(point) = '.'; 
        end
        inp = str2double(inp);
        
        if inp > xMax
            disp('Число больше xMax (Число больше границы интервала)')
        elseif inp > (xMax - xMin)
            disp('Число больше разности границ интервала (xMax - xMin)')
        else
            ok = 1;
        end
        
    end
    out = inp;
end