.PHONY: build
build:
	gem build deb-s3.gemspec


.PHONY: test
test:
	bundle install
	rake


.PHONY: publish
	gem push deb-s3-patched-*.gem
