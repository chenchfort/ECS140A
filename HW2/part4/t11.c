#include <stdio.h>
#define __EXPR(_EXPR) ( (_EXPR) <= 0 )

int main()
{
    {
      int x_i0, x_k0;
      x_i0 = 25;
      x_k0 = 12;
      printf("%d\n", x_i0 + x_k0);
    }
    return 0;
}