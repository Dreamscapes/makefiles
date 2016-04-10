# Run tests using Mocha

# Command line args for Mocha test runner
testflags ?= --check-leaks --no-exit

test: node_modules
	@$(bindir)mocha $(testflags)

.PHONY: test
