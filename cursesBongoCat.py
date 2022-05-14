import curses
from curses import wrapper

def bongo1():
	f = open("bongoAscii.txt", "r")
	for x in range(10):
		print(f.readline(), end="")

def bongo2():
	f = open("bongoAscii.txt", "r")
	for x in range(10, 20):
		if x > 10:
			print(f.readline(), end="")

bongo1()
bongo2()