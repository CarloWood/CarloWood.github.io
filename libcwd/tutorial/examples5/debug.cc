#include "sys.h"	// See tutorial 2
#include "debug.h"

#ifdef CWDEBUG
using namespace libcwd;

namespace example {
  namespace debug {
    namespace channels {
      namespace dc {
	channel_ct elephant("DUMBO");
	channel_ct cat("FELIX");
	channel_ct mouse("HILDAGO");
	channel_ct owl("EINSTEIN");
      }
    }
  }
}
#endif
