# Configuration for Github Pages publishing

ghpagesdir ?= gh-pages
ghpagessrc ?= docs

# Travis cannot access our repo with a username - a token must be exported into GH_TOKEN env var
ghuser := $(if ${GH_TOKEN},${GH_TOKEN},$(ghuser))
# This will usually not change, but if someone forks our repo, this should make sure Travis will
# not try to update the source repo
ghrepo ?= $(shell git remote -v | grep origin | grep fetch | cut -d : -f 2 | cut -d . -f 1)
# If running on Travis, use the Travis-provided repository information
ghrepo := $(if ${TRAVIS_REPO_SLUG},${TRAVIS_REPO_SLUG},$(ghrepo))

# Set commit message depending on platform
ifdef TRAVIS
	commitmsg := $(if ${TRAVIS}, Updated gh-pages from Travis build ${TRAVIS_JOB_NUMBER})
else
	commitmsg := Updated gh-pages manually
endif

# Update gh-pages branch with new docs
gh-pages: $(ghpagessrc)
	$(if ghuser, , $(error ghuser variable is not defined - cannot clone gh-pages branch))
ifdef TRAVIS
	@git config --global user.name "Travis-CI"
	@git config --global user.email "travis@travis-ci.org"
endif
	@git clone --no-checkout --branch=gh-pages \
			https://$(ghuser)@github.com/$(ghrepo).git $(ghpagesdir) > /dev/null 2>&1 && \
		cp -R $(ghpagessrc)/ $(ghpagesdir) && \
		cd $(ghpagesdir) && \
		git add -A && \
		git commit -m '$(commitmsg)' && \
		git push --quiet origin gh-pages > /dev/null 2>&1;

# Delete gh-pages build product
clean-gh-pages:
	@rm -rf $(ghpagesdir)

# Clean gh-pages product when doing cleaning
clean: clean-gh-pages

.PHONY: clean-gh-pages
