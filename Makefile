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

@PHONY: push snapshot sync install set-colorscheme set

