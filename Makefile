push:
	bash push.sh

snapshot:
	bash snapshot.sh

sync: snapshot

install:
	bash install.sh

set-colorscheme:
	bash set_colorscheme.sh

set: set-colorscheme

help:
	@echo -e "install \t... repo -> local\nsync, snapshot \t... local -> repo\n\nset, set-colorscheme \t... generate config files from templates\npush \t... take snapshot and push to git"

@PHONY: push snapshot sync install set-colorscheme set

