clc; clear; 

while (1) 
    a = get_double('??????? ?????? ?????? ?????????(0.4): ');
    b = get_double('??????? ??????? ?????? ?????????(1.4): ');

    if (a > b)
        disp('??????? ?????? ??????? ??????????????, ???????? a ? b: ');
    else
        break;
    end
end 

c = get_double('??????? ?????????? ?(0.188): ');
d = get_double('??????? ?????????? d(1.5): ');
n = get_double('??????? ?????????? ????? n: ');

h=abs(b-a)/n;
h1=abs(b-a)/(2*n);
x=a:h:b;
x1=a:h1:b;
F=0;
k=a+h;
m=b-h;
k1=a+h1;
m1=b-h1;
while k<m
    F=F+h*(1/((c*k^2+d)^(1/2)));
    k=k+h;
end
F=F+h*0.5*(1/(c*a^2+d)^(1/2)+1/(c*b^2+d)^(1/2));
F2=0;
while k1<m1
    F2=F2+h1*(1/((c*k1^2+d)^(1/2)));
    k1=k1+h1;
end
F2=F2+h1*0.5*(1/(c*a^2+d)^(1/2)+1/(c*b^2+d)^(1/2));
fprintf('???????????: %f\n', ((F2-F)*(1/3)));

y=(1./(0.188.*x.^2+1.5).^(1/2));
F1=trapz(x,y);%?????????? ??????? ??????

fprintf('???? ?????: %f\n', (F));
fprintf('?????????? ???????: %f\n', (F1));

