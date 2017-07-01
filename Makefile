-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/unionpos/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)

## install project requirements
bootstrap: init .vars packages
.PHONY: bootstrap

## execute ansible-lint on all roles
lint: 
.PHONY: lint

## install project requirements
packages: packages/install
.PHONY: packages

server:
	open http://localhost:1313/
	hugo server --watch --verbose \
		--buildDrafts \
		--buildExpired \
		--buildFuture \
		--cleanDestinationDir \
		--disableFastRender
.PHONY: server

## update project
update:
	make clean-build-harness
	git pull
	make bootstrap
.PHONY: update
