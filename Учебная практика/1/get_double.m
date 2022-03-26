function [out] = get_double(message)
    while true
        out = input(message,'s');
        [xx, count, errmsg]= sscanf(out,'%f');
        if isempty(errmsg)
            break
        end
        disp('Вы ввели не число. Повторите ввод.');
    end
    out = str2double(out);
end

