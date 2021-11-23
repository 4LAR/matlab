% задание 1
% число является целым, но больше 10

function out = lab4_1(str)
    ok = 0;
    
    while ok ~=1
        inp = input(str, 's');
        if length(inp) < 1
           continue 
        end
        point = strfind(inp, ',');
        if point > 0
           inp(point) = '.'; 
        end
        inp = str2double(inp);
        if mod(inp, 1) ~= 0
            disp('Число не является целым') 
        elseif inp <= 10
            disp('Число не больше 10')
        else
            ok = 1; 
        end
    end
    out = inp;
end