#include "sys.h"
#include "debug.h"

class A {
private:
  char* dynamic_memory;
public:
  A()
  {
    dynamic_memory = new char [300];
    AllocTag(dynamic_memory, "A::dynamic_memory");
  }
  ~A()
  {
    if (dynamic_memory)
      delete [] dynamic_memory;
  }
};

// Global object that allocates memory (bad programming!)
A a;

int main()
{
  Debug(make_all_allocations_invisible_except(nullptr));

  Debug(libcw_do.on());
  Debug(dc::malloc.on());

#if CWDEBUG_ALLOC
  if (libcwd::mem_blocks() > 0)
  {
    Dout(dc::malloc|dc::warning, "Memory leak");
    Debug(list_allocations_on(libcw_do));
  }
  else
    Dout(dc::malloc, "No memory leaks.");
#endif
}
