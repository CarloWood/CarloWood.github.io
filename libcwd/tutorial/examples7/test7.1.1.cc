#include "sys.h"
#include "debug.h"
#include <cstdlib>

int main(void)
{
  Debug( libcw_do.on() );
  Debug( dc::malloc.on() );

  int* first = new int;
  AllocTag2(first, "first");

  int* second = new int;
  AllocTag2(second, "second");

  Debug( list_allocations_on(libcw_do) );

  Debug( make_invisible(first) );

  Debug( list_allocations_on(libcw_do) );

  delete second;
  delete first;

  return 0;
}
