#include <R.h>

/*
extern "C" ensures any C++ functions will be interpreted as C functions by R.
This is necessary for .C() and possibley .Call() within R.
If you're using a ".c" file and a C compiler instead of a ".cpp" file with a C++
compiler, you won't need to write extern "C".
*/

extern "C" void add(int *x, double *y, double *z){
  *z = *x + *y;
}
