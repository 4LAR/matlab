% Задание 3
% Функция для вывода таблицы в терминал

function printtable(x, y, func)
    % вывод шапки таблицы 
    fprintf('/----------------------------------------\\\n'); 
    fprintf('|  Аргумент  |  Функция   |  Интегралл   |\n'); 
    fprintf('|------------|------------|--------------|\n'); 
    % вывод содержимого таблицы
    
    for i = 1:int64(length(x) / 14):length(x)
        fprintf('|%12.4f|%12s|%14.4f|\n', x(i), func, y(i))
    end
    % закроем таблицу 
    fprintf('\\----------------------------------------/\n'); 
end