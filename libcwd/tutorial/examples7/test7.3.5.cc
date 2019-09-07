#include "sys.h"
#include "debug.h"

int main(void)
{
  Debug( make_all_allocations_invisible_except(NULL) );
  Debug( libcw_do.on() );
  Debug( dc::malloc.on() );

  int* p1 = new int [10];
  AllocTag(p1, "p1");

#if CWDEBUG_MARKER
  libcwd::marker_ct* marker = new libcwd::marker_ct("A test marker");
#endif

  int* p2 = new int [20];
  AllocTag(p2, "p2");

  int* p3 = new int [30];
  AllocTag(p3, "p3");

#if CWDEBUG_MARKER
  Debug( move_outside(marker, p2) );
#endif

  Debug( list_allocations_on(libcw_do) );

#if CWDEBUG_MARKER
  // Delete the marker while there are still allocations inside it
  delete marker;
#endif

  return 0;
}
