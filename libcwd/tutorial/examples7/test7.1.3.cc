#include "sys.h"
#include "debug.h"
#include <cstdlib>

int main()
{
  Debug(libcw_do.on());
  Debug(dc::malloc.on());
  Debug(dc::notice.on());

  void* p = std::malloc(3000);
  
  Debug(make_invisible(p));
  Debug(list_allocations_on(libcw_do));

#if CWDEBUG_ALLOC
  Dout(dc::notice, "test_delete(" << p << ") = " << test_delete(p));
#endif
  std::free(p);
#if CWDEBUG_ALLOC
  Dout(dc::notice, "test_delete(" << p << ") = " << test_delete(p));
#endif
}
