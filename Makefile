
build:config
	markem --out out
config:
ifdef GITHUB_USERNAME
else
	$(error env GITHUB_USERNAME not set!!!)
endif
ifdef GITHUB_PASSWORD
else
	$(error env GITHUB_PASSWORD not set!!!)
endif
publish: config
	markem