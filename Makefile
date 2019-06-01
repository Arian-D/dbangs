BIN=b

install:
	cp -f ./$(BIN) $(HOME)/.local/bin
	mkdir -p $(HOME)/.config/dbangs
	cp -n bangs $(HOME)/.config/dbangs
uninstall:
	$(RM) $(HOME)/.local/bin/$(BIN)
