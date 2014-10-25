srcdir=../../libecc/doc
top_srcdir=../../libecc
top_builddir=..

include $(srcdir)/doxygen.config.in
INPUT_FILES=$(shell for i in $(INPUT); do if test -f $(srcdir)/$$i; then echo "$(srcdir)/$$i"; else for j in $(FILE_PATTERNS); do ls "$(srcdir)/$$i/$$j"; done; fi done)
EXAMPLE_FILES=$(shell find $(srcdir)/doxygen-examples -mindepth 1 -maxdepth 1 -type f -print)

.PHONY: reference-manual styles external images scripts

all: index.html reference-manual

index.html: $(srcdir)/index.html
	if test ! -e index.html || test index.html -ot $(srcdir)/index.html; then \
	  cp $(srcdir)/index.html index.html; \
	fi

reference-manual: doxygen.config styles external images scripts
	@test -e $(srcdir)/.formsalt || echo "1" > $(srddir)/.formsalt
	@expr `cat $(srcdir)/.formsalt` + 1 > $(srcdir)/.formsalt
	@rm -f reference-manual/form_*_*.png
	@echo "doxygen doxygen.config"
	@doxygen doxygen.config 2>&1 | egrep -v 'Warning: argument .(DIRECTION|OPERATION|shift|field_type|square_functor). of command @param' || true
	FORMSALT="`cat $(srcdir)/.formsalt`"; \
	for i in `ls reference-manual/*.html`; do \
	  cat $$i | sed -e 's%<h2>Modules</h2>%<h2>Related</h2>%' \
	                -e 's%src="form[_0-9]*\(_[0-9]*\.png\)%src="form_'$$FORMSALT'\1%g' \
	                -e 's%cardinality 2\^m%cardinality 2<SUP>m</SUP>%g' \
	                -e 's%\(<span class="formula">\) %\1%g' \
	                -e 's% \(</span\)%\1%g' \
			-e 's%Cracking parameter a%Cracking parameter <span class="formula">a</span>%' \
	          > $$i.tmp && mv $$i.tmp $$i; \
	done; \
	cd reference-manual; for i in `ls form_*.png`; do \
	  NAME=`echo "$$i" | sed -e 's%form_%form_'$$FORMSALT'_%'`; \
	  ln -sf $$i $$NAME; \
	done

styles:
	$(MAKE) -C styles

images:
	test -d images || mkdir images
	for i in css.gif sflogo.png data3_1.png data4_1.png data5_2.png data6_1.png data7_1.png data9_4.png data10_3.png \
	    ab_map3.png ab_map4.png ab_map5.png ab_map6.png ab_map7.png ab_map9.png ab_map10.png \
	    ab_legend3.png ab_legend4.png ab_legend5.png ab_legend6.png ab_legend7.png ab_legend9.png ab_legend10.png \
	    Pink6.png; do \
	  if test ! -e images/$$i || test images/$$i -ot $(srcdir)/images/$$i; then \
	    cp $(srcdir)/images/$$i images; \
	  fi \
	done

distclean:
	$(MAKE) -C styles distclean
	if test ! -e ../TRINOMIALS -a ! -e .svn -a ! -e images/.svn -a ! -e scripts/.svn; then \
	  rm -rf images scripts index.html; \
	fi
	rm -rf reference-manual
	rm -rf external/TRINOMIALS

scripts:
	test -d scripts || mkdir scripts
	for i in break_out_of_frame.js  detect_browser.js  load_style_sheets.js  xbDebug.js; do \
	  if test ! -e scripts/$$i || test scripts/$$i -ot $(srcdir)/scripts/$$i; then \
	    cp $(srcdir)/scripts/$$i scripts; \
	  fi \
	done

external: external/TRINOMIALS

external/TRINOMIALS: $(top_srcdir)/TRINOMIALS
	mkdir -p external
	cp $(top_srcdir)/TRINOMIALS external/TRINOMIALS

maintainer-clean: distclean
	$(MAKE) -C styles maintainer-clean

distdir:

doxygen.config: $(srcdir)/doxygen.config.in
	$(MAKE) -C .. doc/doxygen.config

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	cd $(top_builddir) && \
	CONFIG_HEADERS= CONFIG_LINKS= \
	CONFIG_FILES=doc/$@ $(SHELL) ./config.status

html.header: $(srcdir)/html.header.in $(top_builddir)/config.status
	cd $(top_builddir) && \
	CONFIG_HEADERS= CONFIG_LINKS= \
	CONFIG_FILES=doc/$@ $(SHELL) ./config.status

html.footer: $(srcdir)/html.footer.in $(top_builddir)/config.status
	cd $(top_builddir) && \
	CONFIG_HEADERS= CONFIG_LINKS= \
	CONFIG_FILES=doc/$@ $(SHELL) ./config.status

