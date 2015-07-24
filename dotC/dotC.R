dyn.load("dotC.so")
output = .C("add", x = as.integer(1), y = as.double(1), z = as.double(0))
print(output)
dyn.unload("dotC.so")