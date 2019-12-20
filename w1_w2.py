import sys
import re

file = 'text.raw'

w1 = '\<[A-Za-z]*\>\sfully_connected1.affine\s[A-Za-z\.0-9\<\>\s]*\[\n'
w2 = ']'
f = open(file,'r')
buff = f.read()

pat = re.compile(w1+r'([\d\D\S]*?)'+w2, re.S)
result = pat.findall(buff)
print(result)
out_f = open("1.txt", "w")
out_f.write(format(result))
out_f.close()
