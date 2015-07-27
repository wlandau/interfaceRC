# dotCall

This example demonstrates `.Call()`, the recommended way to call C/C++ from R for users who do not use `Rcpp`.

To compile and run the examples, 

-If you are running Windows, be sure to [install `Rtools` and set the "Path" environment variable accordingly](https://www.biostat.wisc.edu/~kbroman/Rintro/Rwinpack.html). Don't forget to install [basic MikTex](http://miktex.org/download) if your computer doesn't have it already. Also,  make sure to also add the folder containing R to the "Path" environment variable. For example, if `C:\Program Files\R\R-3.2.1\bin\R.exe` is the path to R, then change the contents of the "Path" variable from \<stuff\> to `C:\Program Files\R\R-3.2.1\bin\R.exe;\<stuff\>`.
- Open Windows Command Prompt or Terminal and change your current working directory to the `dotCall` folder.
- Enter `R CMD SHLIB dotCall.cpp` into the command line. This will create a shared object library that can be loaded into an R session, a file either called `dotCall.dll` or `dotCall.so`. It contains compiled C++ code that can be loaded into an R session.
-  Run dotCall.R in an R session.
