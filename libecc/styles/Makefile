srcdir=/home/carlo/projects/libecc/libecc/doc/styles
top_builddir=../..

BROWSERS=netscape4 netscape6 mozilla konqueror ie
MAIN_OUTPUT=$(shell for b in $(BROWSERS); do echo $$b/main.css; done)
DOXYGEN_OUTPUT=$(shell for b in $(BROWSERS); do echo $$b/doxygen.css; done)
TAG_CW_OUTPUT=$(shell for b in $(BROWSERS); do echo $$b/tag-cw.css; done)

all: $(MAIN_OUTPUT) $(DOXYGEN_OUTPUT) $(TAG_CW_OUTPUT)

$(MAIN_OUTPUT): $(srcdir)/main.css $(srcdir)/defines.h
	@mkdir -p "`dirname $@`"
	@MACRO=`echo $@ | sed -e 's%\([^/]*\)/.*%\1%' | tr a-z A-Z`; \
	cat $(srcdir)/main.css | gcc -D$$MACRO -I$(srcdir) -E -c - | egrep -v '^(#|$$)' > $@

$(DOXYGEN_OUTPUT): $(srcdir)/doxygen.css $(srcdir)/defines.h
	@mkdir -p "`dirname $@`"
	@MACRO=`echo $@ | sed -e 's%\([^/]*\)/.*%\1%' | tr a-z A-Z`; \
	cat $(srcdir)/doxygen.css | gcc -I$(srcdir) -D$$MACRO -E -c - | egrep -v '^(#|$$)' > $@

$(TAG_CW_OUTPUT): $(srcdir)/tag-cw.css $(srcdir)/defines.h
	@mkdir -p "`dirname $@`"
	@MACRO=`echo $@ | sed -e 's%\([^/]*\)/.*%\1%' | tr a-z A-Z`; \
	cat $(srcdir)/tag-cw.css | gcc -I$(srcdir) -D$$MACRO -E -c - | egrep -v '^(#|$$)' > $@

clean:
	for d in $(BROWSERS); do rm -f $$d/*.css; done

distclean: clean

maintainer-clean: distclean

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	cd $(top_builddir) && \
	CONFIG_HEADERS= CONFIG_LINKS= \
	CONFIG_FILES=doc/styles/$@ $(SHELL) ./config.status
