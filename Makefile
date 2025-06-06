.PHONY : serve
serve:
	hugo -s ./exampleSite server

.PHONY : update
update:
	hugo mod get -u ./...

.PHONY : build-demo
build-demo:
	hugo -s ./exampleSite

.PHONY : dev-update
dev-update:
	nix flake update
