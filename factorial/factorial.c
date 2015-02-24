#include <stdlib.h>
#include <stdio.h>

long factorial(int x) {

  int i;         /* counter */
  long fact = 1; /* factorial for this counter */

  if (x < 0) {
    return -1;
  } else if (x < 2) {
    return 1;
  }

  for (i = 2; i <= x; i++) {
    fact = i * fact;
  }

  return fact;
}

int main(int argc, char *argv[]) {
  int  test_input[5] = {-10,0,1,2,10};
  long test_output[5] = {-1,1,1,2,3628800};
  int  i;

  for (i = 0; i < 5; i++) {
    printf("factorial(%d): %ld == %ld %s\n", test_input[i], factorial(test_input[i]), test_output[i], factorial(test_input[i])==test_output[i] ? "true" : "FALSE");
  }
}