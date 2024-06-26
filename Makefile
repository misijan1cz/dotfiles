all: help

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
	@echo -e "\n\ti, install \t\t\t... repo\t->\tlocal\n\ts, sync, snapshot \t\t... local\t->\trepo\n\tc, set, set-colorscheme \t... generate config files from templates\n\tp, push \t\t\t... take snapshot and push to git\n"

i: install
s: sync
c: set-color
p: push

@PHONY: push snapshot sync install set-colorscheme set

