.PHONY: all

update-site:
	cd ../busybe_app; flutter build web --base-href /busybe-web-app-dev/; cd ../busybe-web-app-dev
	cp -r ../busybe_app/build/web/ docs/
	git commit -am "Update site from awsome makefile"
	git push

	@echo Deployed to: https://busybeapp.github.io/busybe-web-app-dev/

