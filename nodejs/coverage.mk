# Generate coverage report (html report available in coverage/lcov-report)
coverage: node_modules
	@$(bindir)istanbul cover $(bindir)_mocha > /dev/null -- $(testflags)

clean-coverage:
	@rm -rf coverage

clean: clean-coverage

.PHONY: clean-coverage
