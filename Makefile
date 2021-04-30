build:
	docker build --tag my_debian .
.PHONY: build

run:
	docker run --rm my_debian:latest
.PHONY: run

run-with-envfile:
	docker run --rm --env-file .env my_debian:latest

run-with-runarg:
	docker run --rm --env-file .env -e hoge='runarg' my_debian:latest	

env-build:
	docker build --tag my_debian:ENV -f ENV.Dockerfile .
	docker run --rm my_debian:ENV
