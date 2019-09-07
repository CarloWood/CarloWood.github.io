#include "sys.h"
#include "debug.h"

using namespace libcwd;

int main(void)
{
  Debug( libcw_do.on() );
  Debug( dc::malloc.on() );

  char* memory_leak = new char [300];
  AllocTag(memory_leak, "memory_leak");

  // Debug( make_invisible(memory_leak) );

#if CWDEBUG_ALLOC
  if (mem_blocks() > 0)
    Dout(dc::warning, "There are still " << mem_size() << " bytes allocated!");
  else
    Dout(dc::malloc, "No memory leaks.");
#endif

  return 0;
}
