f_in = open("boot_code.cde", "r")
f_out = open("new_boot_code.cde", "w")
for x in f_in:
  f_out.write("1"*8 + x)