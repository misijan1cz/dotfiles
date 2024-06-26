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
	@echo -e "\n\tinstall \t\t... repo\t->\tlocal\n\tsync, snapshot \t\t... local\t->\trepo\n\tset, set-colorscheme \t... generate config files from templates\n\tpush \t\t\t... take snapshot and push to git\n"

@PHONY: push snapshot sync install set-colorscheme set

