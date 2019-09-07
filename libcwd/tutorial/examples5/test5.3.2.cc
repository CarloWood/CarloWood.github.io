#include "sys.h"
#include "debug.h"

int main(void)
{
  // Start with everything turned on:
  Debug( libcw_do.on() );
  ForAllDebugChannels( if (!debugChannel.is_on()) debugChannel.on() );

  Debug( dc::elephant.off() );
  Dout(dc::elephant|dc::owl, "The elephant is called Dumbo, the owl is called Einstein.");

  return 0;
}
