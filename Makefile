# Copyright (c) 2009-2010 Michael Sanders
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
PROGRAM = wol
SOURCES = wol.c
MANPAGE = wol.1
OBJECTS = $(SOURCES:.c=.o)
CFLAGS = -Wall -Os -DNDEBUG
LDFLAGS = -lsocket
PREFIX ?= /usr/local

.PHONY: install uninstall clean mrproper

all: $(PROGRAM)

clean:
	$(RM) $(OBJECTS)

mrproper: clean
	$(RM) $(PROGRAM)

install:
	install -m 0755 $(PROGRAM) $(PREFIX)/bin
	install -m 0644 $(MANPAGE) $(PREFIX)/share/man/man1

uninstall:
	$(RM) $(PREFIX)/bin/$(PROGRAM)
	$(RM) $(PREFIX)/share/man/man1/$(MANPAGE)

.c.o:
	$(COMPILE.c) $< -o $@

$(PROGRAM): $(OBJECTS)
	$(LINK.o) -o $@ $<
