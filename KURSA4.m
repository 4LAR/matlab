clc
clear all

theta  = linspace(0,2*pi,1000);
x = theta;
r = (1+sin(x)).*(1+0.9.*cos(8.*x)).*(1+0.1.*cos(24.*x)).*(0.9+0.05.*cos(200.*x));
r_max = 3.2;
h_fake = polar(theta,r_max*ones(size(theta)));
hold on;
h = polar(theta, r);
set(h_fake, 'Visible', 'Off');
