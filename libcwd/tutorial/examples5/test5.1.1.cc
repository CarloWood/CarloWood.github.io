#include "sys.h"		// See tutorial 2
#include "debug.h"

int main(void)
{
  // Turn on debug object `libcw_do'.
  Debug( libcw_do.on() );

  // Turn on all debug channels that are off.
  ForAllDebugChannels(
    if (!debugChannel.is_on())
      debugChannel.on();
  );

  // Print a listing of all debug channels to debug object `libcw_do'.
  Debug( list_channels_on(libcw_do) );

  return 0;
}
