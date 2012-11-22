
build:config
	docpad generate
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
	rm -R -f out
	git clone --branch master git@github.com:pansafe/pansafe.github.com.git out
	rm -R -f out/*
	docpad generate
	git --git-dir out/.git --work-tree=out add --all
	git --git-dir out/.git --work-tree=out commit -m 'compiled from branch src'
	git --git-dir out/.git --work-tree=out push origin master
	rm -R -f out