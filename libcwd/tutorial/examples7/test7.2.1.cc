#include "sys.h"
#include "debug.h"

using namespace libcwd;

template<typename T1, typename T2>
  struct Foo {
    T1 for_me;
    T2 for_you;
    double d;
  };

int main(void)
{
  Debug( libcw_do.on() );
  Debug( dc::malloc.on() );
  Debug( dc::notice.on() );

  Foo<char, int>* f = new Foo<char, int>;
  AllocTag(f, "Our test object");

  int* p = &f->for_you;	// Pointer that points inside `f'

  Dout(dc::notice, "f == " << static_cast<void*>(f));
  Dout(dc::notice, "p == " << static_cast<void*>(p));

#if CWDEBUG_ALLOC
  alloc_ct const* alloc = find_alloc(p);
  Dout(dc::notice,
	 "p points inside \""
      << alloc->description()
      << "\" starting at "
      << alloc->start()
      << " with size "
      << alloc->size()
      << '.');
  Dout(dc::notice,
	 "This memory block contains a \""
      << alloc->type_info().demangled_name() << "\".");
  Dout(dc::notice,
	 "The allocation type is `"
      << alloc->memblk_type()
      << "' and was allocated at "
      << alloc->location()
      << '.');
#endif

  return 0;
}
