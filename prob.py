lambda a:[sum(a)/4-x for x in a]


limit = 20
val = False
for x in range(1, limit):
	for y in range(1, x):
		if	x%y==0 and y!=1 and x!=y:
			val = True
			# print(x)
			break
		else:
			val = False
	if not val:
		print(x)
		# val = False