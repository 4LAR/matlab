% Задание 3
% Функция для вывода таблицы в терминал

function printtable(x, y)
    % вывод шапки таблицы 
    fprintf('/-------------------------\\\n'); 
    fprintf('|  Аргумент  |  Функция   |\n'); 
    fprintf('|------------|------------|\n'); 
    % вывод содержимого таблицы
    for i = 1:length(x)
        fprintf('|%12.4f|%12.4f|\n', x(i), y(i))
    end
    % закроем таблицу 
    fprintf('\\-------------------------/\n'); 
end