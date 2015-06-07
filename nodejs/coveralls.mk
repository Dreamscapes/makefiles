# Submit code coverage to Coveralls (works from Travis; from localhost, additional setup is needed)
coveralls: coverage
	@$(bindir)coveralls < coverage/lcov.info

.PHONY: coveralls
