x = 0: 0.05: 100;
y2 = (x < 10) .* 0 + 0 <= x < (pi / 4) .* tan(x) + (x >= (pi / 4)) .* 1;

plot(x, y2)
xlabel("Ось - X")
ylabel("Ось - Y")