# dotC

First, note that `.Call()` is recommended instead of `.C()` in practice. However, `.C()` is a quick way to get started, adn it is useful for explaining how things generally work without being encumbered with too many details.

This example is just a bundle of code, not an R package. It demonstrates the interface between R and C using the `.C()` function in R. Any C functions called from R using `.C()` must accept all pointer arguments and return void. For `.C()`, I recommend that all arguments be integer or numeric vectors.

To compile and run, 

- Open a command line window and change your current working directory to the `dotC` folder.
- Enter `R CMD SHLIB dot.cpp` into the command line. This will create `dotC.so`, a shared object library that can be loaded into an R session. It contains compiled C++ code that can be loaded into an R session.
- Run dotC.R in an R session.