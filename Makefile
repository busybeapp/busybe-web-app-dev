.PHONY: all

update-site:
	make -C ../busybe_app build-web-app-dev
	cp -r ../busybe_app/build/web/ docs/
	git commit -am "Update site from awsome makefile"
	git push

	echo Deployed to: https://busybeapp.github.io/busybe-web-app-dev/

