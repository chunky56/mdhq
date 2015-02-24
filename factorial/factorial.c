#include <stdlib.h>
#include <stdio.h>

long factorial(int x) {

  int i;              /* counter */
  long this_fact;     /* factorial for this counter */
  long last_fact = 1; /* factorial for last counter */

  if (x < 2) {
    return 1;
  }
  
  for (i = 2; i <= x; i++) {
    this_fact = i * last_fact;
    last_fact = this_fact;
  }

  return this_fact;
}

int main(int argc, char *argv[]) {
  int x;
  long fact;

  if (argc < 2) {
    printf("Usage: %s <non-negative number>\n", argv[0]);
  } else {
    x = atoi(argv[1]);
    fact = factorial(x);
    printf("The factorial of %d is: %ld\n", x, fact);
  }
}