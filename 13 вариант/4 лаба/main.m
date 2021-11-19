
clc % чистим терминал
clear all % удалаем все переменные с рабочей области

definition_anfun

x = -3:0.01:0; % задаём диапазон от -3 до 0 с шагом 0.01

for i=1:length(x)  
    y1(i) = f1(x(i));
    
    y2(i) = f2(x(i));
    
end  

% рисуем график
plot(x, y1, x, y2) 
xlabel("x") 
ylabel("y") 
legend('f1(x) => кусочно заданная функция','f2(x) = (-x .* exp(-(x - 4) .^ 2) + x .* exp(-(x - 9) .^ 2))') 
grid on 
