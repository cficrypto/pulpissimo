import sys

if len(sys.argv) < 3:
	print("Too few arguments!\nUsage: expand input-file output-file")
	exit()

f_in = open(sys.argv[1], "r")
f_out = open(sys.argv[2], "w")
for x in f_in:
	f_out.write("1"*8 + x)
