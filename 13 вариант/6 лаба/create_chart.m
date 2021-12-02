% функция для вывода 2х графиков в 1 окне
function create_chart(x_v, y, xMin, xMax)
    
    % вывод 1 графика
    subplot(2,1,1)
    hold on
    
    n_app = length(y) * 3;
    y1 = interpft(y, n_app);
    dx = length(y) / n_app;
    x1 = 0:dx:length(y) - dx;
    x1 = x1 + xMin;
    %x = 0:length(x1) - 1;
    
    plot(x1, y1, '-c', 'LineWidth', 2.5);
    plot(x_v, y, '.y', 'LineWidth', 2.5);
    
    
    % отображение минимума и максимума в 1 графике
    xMaxFunc = xMin:xMax;
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * max(y1), '--r', 'LineWidth', 1.5);
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * min(y1), '--r', 'LineWidth', 1.5);
    
    xlim([xMin, xMax])
    grid on
    
    % вывод 2 графика
    subplot(2,1,2)
    hold on

    plot(x1, y1, '--c', 'LineWidth', 2.5);
    
    % вывод минимума и максимума во 2 графике
    xMaxFunc = xMin:xMax;
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * max(y1), '--r', 'LineWidth', 1.5);
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * min(y1), '--r', 'LineWidth', 1.5);
    
    xlim([xMin, xMax])
    grid on
    
end