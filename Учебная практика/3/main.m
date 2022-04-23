clc; clear; 

while (1) 
    a = get_double('Введите нижний предел интеграла(0.3): ');
    b = get_double('Введите верхний предел интеграла(1.3): ');

    if (a > b)
        disp('Неверно задана область интегрирования, измените a и b');
    else
        break;
    end
end 

c = get_double('Введите коэфициент с(0.042): ');
d = get_double('Введите коэфициент d(0.8): ');
n = get_double('Введите количество шагов n: ');

n=str2double(n); 
h=abs(b-a)/n; 
h1=abs(b-a)/(2*n); 
x=a:h:b; 
x1=a:h1:b; 
F=0; 
k=a+h; 
m=b-h; 
J=F2-F 
y=(1./(0.042.*x.^2+0.8).^(1/2)); 
F1=trapz(x,y);
F 
F1 