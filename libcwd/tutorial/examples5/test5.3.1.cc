#include "sys.h"		// See § 2
#include "debug.h"		// See § 5.2

int main(void)
{
  // Start with everything turned on:
  Debug( libcw_do.on() );
  ForAllDebugChannels( if (!debugChannel.is_on()) debugChannel.on() );

  Dout(dc::elephant|dc::owl, "The elephant is called Dumbo, the owl is called Einstein.");

  return 0;
}
