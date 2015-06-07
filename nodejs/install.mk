# Install dependencies (added for compatibility reasons with usual workflows with make, .e. calling
# make && make install)
node_modules:
	@npm install

install: node_modules

clean-install:
	@rm -rf node_modules

.PHONY: clean-install
