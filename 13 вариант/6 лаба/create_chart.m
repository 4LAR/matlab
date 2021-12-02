function create_chart(x_v, y, minFunc, maxFunc, xMin, xMax)
    subplot(2,1,1)
    hold on

    plot(x_v, y, '-c', 'LineWidth', 2.5);
    plot(x_v, y, '.y', 'LineWidth', 2.5);

    xMaxFunc = xMin:xMax;
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * maxFunc, '--r', 'LineWidth', 1.5);
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * minFunc, '--r', 'LineWidth', 1.5);

    grid on

    subplot(2,1,2)
    hold on

    plot(x_v, y, '--c', 'LineWidth', 2.5);
    xMaxFunc = xMin:xMax;
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * maxFunc, '--r', 'LineWidth', 1.5);
    plot(xMaxFunc, ones(1, length(xMaxFunc)) * minFunc, '--r', 'LineWidth', 1.5);
end