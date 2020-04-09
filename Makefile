SMLPKG ?= smlpkg

.PHONY: all
all: lib/github.com/diku-dk/sml-setmap
	$(MAKE) -C lib/github.com/diku-dk/sml-json all

.PHONY: test
test: lib/github.com/diku-dk/sml-setmap
	$(MAKE) -C lib/github.com/diku-dk/sml-json test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-json clean
	rm -rf MLB *~ .*~

.PHONY: realclean
realclean:
	$(MAKE) clean
	rm -rf lib/github.com/diku-dk/sml-setmap

lib/github.com/diku-dk/sml-setmap:
	$(SMLPKG) sync
