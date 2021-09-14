x1 = 4;
xMin = 1;
dx = 0.08;
xMax = 9;

y1 = -x1 * exp(-(x1 - 4) ^ 2) + x1 * exp(-(x1 - 9) ^ 2);
disp("y1 = " + y1)

x = xMin:dx:xMax;
y = -x .* exp(-(x - 4) .^ 2) + x .* exp(-(x - 9) .^ 2);


plot(x, y)
xlabel("Ось - X")
ylabel("Ось - Y")