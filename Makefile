BIN=b

install:
	cp -f ./$(BIN) ~/.local/bin
uninstall:
	$(RM) ~/.local/bin/$(BIN)
