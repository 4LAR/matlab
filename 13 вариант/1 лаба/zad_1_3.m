str1 = "Столяров";
str2 = "Никита";
str3 = "Сергеевич";

str4 = strcat(str1, str2, str3);
%str5 = [str1, str2, str3];
str5 = strvcat(str1, str2, str3);

a_pos = strfind(str4, "а")

if (length(strfind(str4, "ю")) > 0)
    disp("В ФИО есть буква Ю"); 
else
    disp("В ФИО нет буквы Ю");
end

lower(str4)
