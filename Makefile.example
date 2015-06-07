# This task, since it is first, will be the default when make is invoked without a specific task.
# You can make make make only your preferred targets by default.
all: install lint test coverage docs

# Load up the targets for a specific platform. You can also load up only the targets you are
# interested in.
include nodejs/*.mk
# Shared targets should not be platform-dependent and should therefore work with any platform.
include shared/*.mk

# There are some variables that need to be set, or you may simply wish to override some of them to
# suit your specific needs.
ghuser = Alaneor
lintfiles = lib test
testflags += --require should

# You can also change what tasks are to be executed as requirements of other tasks. For example, you
# could tell make to lint your files before your tests are run:
test: lint
# ... or prohibit some targets to complete if they are executed on a different platform version:
gh-pages: platform-version
