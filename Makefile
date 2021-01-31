.PHONY = update
update:
	curl --silent --location https://api.github.com/repos/foo-dogsquared/hugo-mod-simple-icons/commits | jq '.[0].sha' --raw-output | xargs --replace='{}' hugo mod get -u "github.com/foo-dogsquared/hugo-mod-simple-icons@{}" && hugo mod tidy

