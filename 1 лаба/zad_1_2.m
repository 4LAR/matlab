x = -7: 0.1: 2.9;
y2 = (x < 0) .* 0 + ((0 <= x) .* (x < (pi / 4))) .* tan(x) + (x >= (pi / 4)) .* 1;

plot(x, y2)
xlabel("Ось - X")
ylabel("Ось - Y")