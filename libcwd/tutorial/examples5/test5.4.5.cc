#include "sys.h"
#include "debug.h"
#include <sys/stat.h>
#include <cstdlib>

std::ostream& operator<<(std::ostream& os, struct stat const buf)
{
  os << "inode:" << buf.st_ino << "; " << "size:" << buf.st_size;
  return os;
}

std::ostream& operator<<(std::ostream& os, struct stat const* bufp)
{
  os << "{ " << *bufp << " }";
  return os;
}

// We only use this function to show what happens with the debug output.
// You shouldn't do anything like this in a real program.
int stat_with_buf_alloc(char const* file_name, struct stat*& bufp)
{
  bufp = new struct stat;
  return stat(file_name, bufp);
}

int main(int argc, char* argv[])
{
  Debug( libcw_do.on() );
  Debug( dc::notice.on() );
  Debug( dc::malloc.on() );

  if (argc != 2)
  {
    std::cerr << "Usage: " << argv[0] << " <file_name>\n";
    exit(-1);
  }

  char const* file_name = argv[1];
  struct stat* bufp;

  Dout(dc::notice|continued_cf,
       "stat_with_buf_alloc(\"" << file_name << "\", ");

  int ret = stat_with_buf_alloc(file_name, bufp);

  Dout(dc::finish|cond_error_cf(ret != 0),
       bufp << ") = " << ret);

  Debug( dc::malloc.off() );
  delete bufp;
  return 0;
}
