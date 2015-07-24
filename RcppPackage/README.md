# RcppPackage

This is a skeleton R package that uses Rcpp, CUDA, and s4 classes. This is a learning exercise. To compile and test, 

- Open a command line / Terminal prompt and change the current working directory to the directory containing `RcppPackage`.
- Run `Rscript -e 'library(Rcpp); compileAttributes("RcppPackage")'`. This will generate the necessary `R/RcppExports.R` and `src/RcppExports.cpp` files.
- Run `Rscript -e 'library(roxygen2); roxygenize("RcppPackage")'`. This will generate the documentation (`man/*.Rd`) files recommended for a clean package.

