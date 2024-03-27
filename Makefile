# Makefile for Hugo-based static websites

# configuration
DIR_CONTENT     = articles
HUGO_BASEURL   ?= https://local.workloads.io/
MAKEFILE_TITLE  = 🌐 WEBSITE

include ../tooling/make/configs/shared.mk
include ../tooling/make/functions/shared.mk
include ../tooling/make/targets/hugo.mk
include ../tooling/make/targets/shared.mk
