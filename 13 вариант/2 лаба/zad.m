a = '5;6;7;8';
b = '11';
c = '8 / 150 + 0.24';
d = 'Good evening';

fprintf("======str2double=======\n")
fprintf("%s => %f\n", a, str2double(a)) % NaN
fprintf("%s => %f\n", b, str2double(b)) % 11.0
fprintf("%s => %f\n", c, str2double(c)) % NaN
fprintf("%s => %f\n", d, str2double(d)) % NaN

fprintf("======str2num=======\n")
fprintf("%s => %f\n", a, str2num(a)) % 5.0
fprintf("%s => %f\n", b, str2num(b)) % 11.0
fprintf("%s => %f\n", c, str2num(c)) % 0.293333
fprintf("%s => %f\n", d, str2num(d)) % "nothing"

fprintf("======eval=======\n")
eval(a) % 8
eval(b) % 11
eval(c) % 0.2933
eval(d) % Unrecognized function or variable 'Good'.

