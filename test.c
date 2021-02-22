#include <stdlib.h>
#include <stdio.h>

// YOU: Allocate these global variables, using these names
int  a;
int* p;
int  b[10];

int main (int argv, char** argc) {
  // Ignore this block of code
  int b[10] = {0,1,1,2,3,5,8,13,21,34};
  int * i = &b;
  int c = &i[0];
  //printf("a=%d",   c);
  printf("%p\n",(void*)&b);
  printf("%p\n",(void*)&i[0]);
  //int c = *(b+3);
  //*p = 10;
  
  printf("a=%d",   *(b + (&b[7]-b+2)));

  // Ignore this block of code
  //printf ("a=%d *p=%d\n", c, *p);
}
