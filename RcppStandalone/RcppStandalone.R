library(Rcpp)

# Example: sum the rows of a matrix

cppFunction('NumericVector rowSumsC(NumericMatrix x) {
  int nrow = x.nrow(), ncol = x.ncol();
  NumericVector out(nrow);

  for (int i = 0; i < nrow; i++) {
    double total = 0;
    for (int j = 0; j < ncol; j++) {
      total += x(i, j);
    }
    out[i] = total;
  }
  return out;
}')

x <- matrix(sample(100), 10)
print(rowSums(x))
print(rowSumsC(x))
