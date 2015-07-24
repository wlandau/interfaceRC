# dotCall

This example demonstrates `.Call()`, the recommended way to call C/C++ from R for users who do not use `Rcpp`.

To compile and run the examples, 

- Open a command line window and change your current working directory to the `dotCall` folder.
- Enter `R CMD SHLIB dotCall.cpp` into the command line. This will create `dotCall.so`, a shared object library that can be loaded into an R session. It contains compiled C++ code that can be loaded into an R session.
-  Run dotCall.R in an R session.