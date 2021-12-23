import numpy
import os

#simv = nput('Символ: ')
slovar = []
count = []

f2_text = ''

slovar_f = open('slovar.txt', 'r', encoding="utf-8")
for s in slovar_f.read():
    slovar.append(s)
    count.append(0)
    
f = open('text.txt', 'r', encoding="utf-8")
f2 = open('text2.txt', 'w', encoding="utf-8")

for c in f.read():
    for i in range(len(slovar)):
        if c == slovar[i]:
            count[i] += 1
            f2_text += c

f2.write(f2_text)
f2.close()
for i in range(len(slovar)):
    print(slovar[i], count[i])

print('-'*10)

for i in range(len(slovar)):
    print(count[i])

print('-'*10)
