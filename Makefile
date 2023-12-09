# Makefile for Hugo-based static websites

# configuration
ARGS         :=
BINARY_HUGO  ?= $(call check_for_binary,hugo)
DIR_ARTICLES = article
DIR_DIST     = public
HUGO_BASEURL = https://local.workloads.io/
HUGO_CONFIG  = hugo.toml
TITLE        = 🌐 WEBSITE

# convenience handle for ALL CLI arguments
cli_args = --config="$(HUGO_CONFIG)"

include ../tooling/make/configs/shared.mk
include ../tooling/make/functions/shared.mk
include ../tooling/make/targets/shared.mk

.SILENT .PHONY: build
build: # build website files [Usage: `make build`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif
	$(BINARY_HUGO) \
		$(cli_args)

.SILENT .PHONY: config
config: # display configuration for website [Usage: `make config`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif

	$(BINARY_HUGO) \
		config \
			$(cli_args)

.SILENT .PHONY: content
content: # create new content [Usage: `make content title="<title>"`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif

	$(if $(title),,$(call missing_argument,title=<title>))

	$(BINARY_HUGO) \
		new \
			content \
				$(cli_args) \
				$(DIR_ARTICLES)/$(title).md \

.SILENT .PHONY: server
server: # start Hugo server [Usage: `make server`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif

	$(BINARY_HUGO) \
		server \
			$(cli_args) \
			--baseURL=$(HUGO_BASEURL) \
			--disableBrowserError \
			--disableFastRender \
			--forceSyncStatic \
			--gc \
			--navigateToChanged \
			--noBuildLock \
			--printUnusedTemplates \
			--tlsAuto \

.SILENT .PHONY: deploy
deploy: # deploy new and updated content [Usage: `make deploy target="<target>"`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif

	$(if $(target),,$(call missing_argument,target=<target>))

	$(BINARY_HUGO) \
		deploy \
			$(cli_args) \
			--target=$(target) \

.SILENT .PHONY: trust
trust: # establish trust for generated TLS certificates [Usage: `make trust`]
ifeq ($(strip $(BINARY_HUGO)),)
	$(error 🛑 Missing required Hugo CLI)
endif

	$(BINARY_HUGO) \
		server \
			trust \
			$(cli_args)
