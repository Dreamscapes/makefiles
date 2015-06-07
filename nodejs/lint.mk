# Lint all js files (configuration available in .eslintrc)

# By default, lint files in these locations
lintfiles ?= lib test index.js

lint:
	@$(bindir)eslint $(lintfiles)

.PHONY: lint
