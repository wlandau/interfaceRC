#include <R.h>
#include <Rinternals.h>

// Add 2 numbers and store the reult in z.
extern "C" SEXP add_noreturn(SEXP x, SEXP y, SEXP z){
  REAL(z)[0] = INTEGER(x)[0] + REAL(y)[0];
  return R_NilValue;
}

// Add 2 numbers and return the result.
extern "C" SEXP add_return(SEXP x, SEXP y){
  SEXP result = PROTECT(allocVector(REALSXP, 1));
  REAL(result)[0] = INTEGER(x)[0] + REAL(y)[0];
  UNPROTECT(1);
  return result;
}

/*
The next three functions demonstrate how to pass
lists into C++ and access their elements.
*/

int index(SEXP obj, const char *str){
  int i = -1;
  SEXP names = getAttrib(obj, R_NamesSymbol);
  for (i = 0; i < length(obj); ++i)
    if(strcmp(CHAR(STRING_ELT(names, i)), str) == 0)
      break;
  return i;
}

SEXP list_element(SEXP obj, const char *str){
  return VECTOR_ELT(obj, index(obj, str));
}

extern "C" SEXP list_add(SEXP mylist){
  REAL(list_element(mylist, "z"))[0] = INTEGER(list_element(mylist, "x"))[0] + REAL(list_element(mylist, "y"))[0];
  return R_NilValue;
}
