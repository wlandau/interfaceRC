files = paste0("dotCall.", c("dll", "so"))
file = files[file.exists(files)][1] # either "dotCall.dll" or "dotCall.so"

dyn.load(file)

# Add 2 numbers and store the result in z.

z = 0
.Call("add_noreturn", x = as.integer(1), y = as.double(1), z = z)
z

# Add 2 numbers and return the result.

output = .Call("add_return", x = as.integer(1), y = as.double(1))
print(output)

# Add 2 elements of a list and store the result in the same list.

mylist = list(x = as.integer(1), y = 1, z = 0)
.Call("list_add", mylist = mylist)
print(mylist)

# Add the first elements of "x" and "y" in a data frame and store the result
# in the first element of "z".

mydataframe = data.frame(x = as.integer(1, 1), y = c(1, 1), z = c(0, 0))
.Call("list_add", mylist = mydataframe)
print(mydataframe)

dyn.unload(file)
