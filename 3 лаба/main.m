clc
clear all

dx = 0.0005;
e = 0.00002;

x = -3:0.01:0

i = 0;
for x_ = x
    i = i + 1;
    if x_ < -2
        y(i) = -1;
    elseif x_ < -1
        y(i) = 0;
        for z = -2:dx:x_
            y(i) = y(i) + z + (1./sin(z));
        end
        y(i) = y(i) * dx;
    else
        y(i) = -1;
        n = 0;
        x_n = 2 * e;
        factI = 1;
        xPow = 1;
        while abs(x_n) >= e
            x_n = xPow / factI;
            y(i) = y(i) + x_n;
            n = n + 1;
            xPow = xPow * (x_ ^ (2 * n + 1));
            factI = factI * (2 * n);
        end
    end
end

plot(x,y) 
xlabel x 
ylabel y 
grid on 
