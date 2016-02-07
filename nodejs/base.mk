# Base configuration for the Node.js platform Make targets

# Directory where project binaries reside
bindir := node_modules/.bin/
# Current Node.js version (in the form v{MAJOR}.{MINOR}, i.e. v5.5)
platform_v := $(shell node -v | cut -f 1,2 -d .)
# Target Node.js version
platform_t ?= v5.5
