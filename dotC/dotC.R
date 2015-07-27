files = paste0("dotC.", c("dll", "so"))
file = files[file.exists(files)][1] # either "dotC.dll" or "dotC.so"

dyn.load(file)
output = .C("add", x = as.integer(1), y = as.double(1), z = as.double(0))
print(output)
dyn.unload(file)