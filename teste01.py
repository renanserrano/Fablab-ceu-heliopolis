#coding=UTF-8

idade = None

print "Qual é sua idade?"
idade = input()

if (idade <18):
	print "menor de 18"
if (idade > 18) & (idade < 65):
	print "adulto!"
if (idade > 65):
	print "idoso"

