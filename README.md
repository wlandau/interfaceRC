# interfaceRC

If you are running Windows, be sure to [install `Rtools` and set the "Path" environment variable accordingly](https://www.biostat.wisc.edu/~kbroman/Rintro/Rwinpack.html). Don't forget to install [basic MikTex](http://miktex.org/download) if your computer doesn't have it already. Also, make sure to also add the folder containing R to the "Path" environment variable. For example, if `C:\Program Files\R\R-3.2.1\bin\R.exe` is the path to R, then change the contents of the "Path" variable from \<stuff\> to `C:\Program Files\R\R-3.2.1\bin\R.exe;\<stuff\>`.

This repo has examples demonstrating the interface between R and C, along with the Rcpp package. Each folder is a separate example, either a full R package or just a bundle of code. Follow the instructions in each folder's `README.md` to compile/install and run.

Here are some other informative resources.

- The `Rcpp.package.skeleton()` and `compileAttributes()` functions in `Rcpp`.
- [Hadley Wickham's R/C interface chapter in Advanced R](http://adv-r.had.co.nz/C-interface.html)
- [Hadley's Rcpp chapter](http://adv-r.had.co.nz/Rcpp.html)
- [setting up `Rtools` on Windows](https://www.biostat.wisc.edu/~kbroman/Rintro/Rwinpack.html)
- [writing R extensions in Windows](http://www.math.kit.edu/stoch/~lindner/media/.c.call%20extensions.pdf)
- [R internals manual](cran.r-project.org/doc/manuals/R-ints.html)
- [Rinternals.h (for SEXP types)](https://svn.r-project.org/R/trunk/src/include/Rinternals.h)
