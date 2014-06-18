PREFIX=/usr/local
COREMAKE=./corec/tools/coremake/coremake

bits_64=$(shell uname -a | grep x86_64)
os_linux=$(shell uname -a | grep Linux)
os_mac=$(shell uname -a |grep Darwin)
os_mingw32=$(shell uname -a |grep MINGW32)

ifneq ($(os_linux),)
os=linux
endif

ifneq ($(os_mac),)
os=osx
endif

ifneq ($(os_mingw32),)
os=win32
endif

ifneq ($(bits_64),)
bits=_x64
endif

flavor=gcc_$(os)$(bits)


$(COREMAKE):
	cd ./corec/tools/coremake/ && make

GNUmakefile: $(COREMAKE)
	$(COREMAKE) $(flavor)

all: GNUmakefile
	$(MAKE) -f GNUmakefile

install:
	mkdir -p $(DESTDIR)/$(PREFIX)
	cp -rf ./libmatroska2/matroska $(DESTDIR)/$(PREFIX)/.
	cp -rf ./corec/corec $(DESTDIR)/$(PREFIX)/.
	cp -rf ./libebml2/ebml $(DESTDIR)/$(PREFIX)/.
