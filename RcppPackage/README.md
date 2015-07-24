# RcppPackage

This is a skeleton R package that uses Rcpp, CUDA, and s4 classes. This is a learning exercise. To compile and test, 

- Open a command line / Terminal prompt and change the current working directory to the directory containing `RcppPackage`.
- Run 

```
Rscript -e 'library(Rcpp); compileAttributes("RcppPackage")'
```
This will generate the necessary `R/RcppExports.R` and `src/RcppExports.cpp` files.

- Open R/RcppExports.R in a text editor and add the following lines right above the definition of `someCPPcode()` with no blank spaces.

```
#' @title Function \code{someCPPcode}
#' @description Demonstrates the s4 functionality of \code{Rcpp}.
#' @export
#' @return NULL
#' @param r s4 object of class \code{MyClass}
```

This ensures that the documentation file for `someCPPcode()` will be generated and the user will have access to this function in an R session.


- Run 

```
Rscript -e 'library(roxygen2); roxygenize("RcppPackage")'
``` 

This will generate the documentation (`man/*.Rd`) files recommended for a clean package.

- To build the package, run 

```
R CMD build RcppPackage
```

- To install the package, run

```
R CMD INSTALL RcppPackage_0.0.tar.gz
```

- To ensure the package is clean and quality-controlled enough to submit to CRAN or Bioconductor, run

```
R CMD INSTALL RcppPackage_0.0.tar.gz
```

- To test the package, run the following code in a new R session.

```
library(RcppPackage)
hello()
```




