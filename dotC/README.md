# dotC

First, note that `.Call()` is recommended instead of `.C()` in practice. However, `.C()` is a quick way to get started, adn it is useful for explaining how things generally work without being encumbered with too many details.

This example is just a bundle of code, not an R package. It demonstrates the interface between R and C using the `.C()` function in R. Any C functions called from R using `.C()` must accept all pointer arguments and return void. For `.C()`, I recommend that all arguments be integer or numeric vectors.

To compile and run, 

-If you are running Windows, be sure to [install `Rtools` and set the "Path" environment variable accordingly](https://www.biostat.wisc.edu/~kbroman/Rintro/Rwinpack.html). Also,  make sure to also add the folder containing R to the "Path" environment variable. For example, if `C:\Program Files\R\R-3.2.1\bin\R.exe` is the path to R, then change the contents of the "Path" variable from \<stuff\> to `C:\Program Files\R\R-3.2.1\bin\R.exe;\<stuff\>`.
- Open Windows Command Prompt or Terminal and change your current working directory to the `dotC` folder.
- Enter `R CMD SHLIB dot.cpp` into the command line. This will create a shared object library that can be loaded into an R session, a file either called `dotC.dll` or `dotC.so`. It contains compiled C++ code that can be loaded into an R session.
- Run dotC.R in an R session.