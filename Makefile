init:
	docker build docker -t php7
	docker run -v `pwd`/html:/var/www/html php7 composer create-project --prefer-dist cakephp/app app
	cp -Rp config/app.php html/app/config/app.php

up:
	docker-compose up
