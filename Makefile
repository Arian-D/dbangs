BIN=b

install:
	cp -f ./$(BIN) /usr/local/bin
uninstall:
	$(rm) /usr/local/bin/$(BIN)
