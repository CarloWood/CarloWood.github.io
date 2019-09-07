#include "sys.h"
#include "debug.h"

int main(void)
{
  Debug( libcw_do.on() );
  Debug( dc::notice.on() );

  Dout(dc::notice|nonewline_cf, "Hello, ");
  Dout(dc::notice, "World");

  return 0;
}
