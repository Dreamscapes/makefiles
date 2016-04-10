# Generate documentation

docdir ?= docs
jsdocconf ?= jsdoc.json

docs: node_modules
	@$(bindir)jsdoc --configure $(jsdocconf) --destination $(docdir)

# Delete docs
clean-docs:
	@rm -rf $(docdir)

clean: clean-docs

.PHONY: clean-docs
