
buildmak:config
	docpad generate
# .SILENT: config
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
	docpad generate
	cd out 
	git add --all
	git commit -m 'compiled from branch src'
	git push origin master
	cd ..
	rm -R -f out