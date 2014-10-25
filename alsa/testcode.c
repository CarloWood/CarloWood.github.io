#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/soundcard.h>
#include <time.h>
#include <stdlib.h>

int main(void)
{
  int fd;
  int res = 0x7fff0009;
  audio_buf_info info;
  int prev_size = 0;
  do
  {
    ++res;
    close(fd);
    fd = open("/dev/dsp", O_RDONLY);
    if (fd == -1) { perror("open"); exit(127); }
    if (ioctl(fd, SNDCTL_DSP_SETFRAGMENT, &res) == -1) {
      perror("ioctl"); exit(127); }
    if (ioctl(fd, SNDCTL_DSP_GETISPACE, &info) == -1) {
      perror("read"); exit(127); }
    printf("    Allocated %d buffers of %d bytes.\n", info.fragstotal, info.fragsize);
    if (prev_size == info.fragsize * info.fragstotal)
    {
      printf("    It seems impossible to set a recording buffer with a\n"
             "    total size of at least 8192 bytes.  This is not going\n"
             "    to work with ViaVoice.  Sorry.\n");
      exit(126);
    }
    prev_size = info.fragsize * info.fragstotal;
  }
  while (prev_size < 8192);
  printf("    Successfully allocated a buffer that is large enough.\n");
  res = AFMT_S16_LE;
  if (ioctl(fd, SNDCTL_DSP_SETFMT, &res) == -1) {
    perror("ioctl"); exit(127); }
  res = 0;
  if (ioctl(fd, SNDCTL_DSP_STEREO, &res) == -1) {
    perror("ioctl"); exit(127); }
  res = 22050;
  if (ioctl(fd, SOUND_PCM_READ_RATE, &res) == -1) {
    perror("ioctl"); exit(127); }
  char buf[1024];
  if (read(fd, buf, sizeof(buf)) < 0) { perror("read"); exit(127); }
  static struct timespec naptime = { 0, 100000000 };
  int count = 0;
  do {
    if (ioctl(fd, SNDCTL_DSP_GETISPACE, &info) == -1) {
      perror("read"); exit(127); }
    printf("    Available bytes: %d\n", info.bytes);
    nanosleep(&naptime, 0);
    if (++count == 200) { printf("    Success: No overrun occurs.\n"); exit(0); }
  } while(info.bytes < info.fragsize * info.fragstotal);
  printf("    Successfully caused an xrun.\n");
  printf("    non-blocking fragments: %d\n", info.fragments);
  printf("    non-blocking bytes: %d\n", info.bytes);
  ssize_t bufsize = info.bytes;
  if (ioctl(fd, SNDCTL_DSP_GETISPACE, &info) == -1) {
    perror("read"); exit(127); }
  printf("    Available bytes in buffer: %d\n", info.bytes);
  ssize_t trlen = 0;
  int nf = 0;
  for (;;)
  {
    if (info.fragments > 0) {
      ssize_t rlen;
      if ((rlen = read(fd, buf, sizeof(buf))) < 0)
      { perror("read"); exit(127); }
      printf("    Additionally read %d bytes.\n", rlen);
      trlen += rlen;
      if (trlen > bufsize) {
        printf("    Read %d bytes: stream successfully restarted.\n", trlen);
        break;
      }
      nf = 0;
    }
    else if (++nf > 10) {
      printf("    Stream is not restarted after xrun.\n");
      exit(1);
    }
    if (ioctl(fd, SNDCTL_DSP_GETISPACE, &info) == -1) {
      perror("read"); exit(127); }
  }
  close(fd);
  return 0;
}

