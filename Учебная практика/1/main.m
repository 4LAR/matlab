clear all; clc;

a = get_double('Введите коэффициент a:');
b = get_double('Введите коэффициент b:');
c = get_double('Введите коэффициент c:');
d = get_double('Введите коэффициент d:');

E = get_double('Введите точность E:');

k = get_double('Введите левую границу промежутка k:');
l = get_double('Введите правую границу промежутка l:');

x9 = fzero(strcat(string(a),'*exp(1)^(-',string(b),'*x)*sin(',string(c),'*x+',string(d),')-1'),k);
disp(x9);

syms f(t) fdiff(t) fdiff2(t);
f(t) = a.*exp(1).^(-b.*t).*sin(c.*t+d) - 1;
fdiff(t) = -b*a*exp(1)^(-b*t)*sin(c*t+d)+a.*c*exp(1)^(-b*t)*cos(c*t+d);
fdiff2(t)=a*b*b*exp(1)^(-b*t)*sin(c*t+d) - 2*a*b*c*exp(1) ^ (-b*t)*cos(c*t+d)-a*c*c*exp(1)^(-b*t)*sin(c*t+d);

while true
    x = -2:0.001:1;
    y = f(x);
    plot(x, y);
    
    if f(k)*fdiff2(k) > 0
        x = k;
        break;
    elseif f(l)*fdiff2(l) > 0
        x = l;
        break;
    else
        disp ('Неверно указан промежуток');
    end
end
while abs(f(x)/fdiff(x)) >= E
    x = x - f(x)/fdiff(x);
end

disp(double(x));
