PROGRAM = myjman
DEST = ~/bin/

RM = rm -f

all: $(PROGRAM)

install: $(PROGRAM)
	mkdir -p $(DEST)
	install $(PROGRAM) $(DEST)

.PHONY: uninstall
uninstall:
	$(RM) $(DEST)/$(PROGRAM)

.PHONY: clean
clean:
	$(RM) $(PROGRAM)
