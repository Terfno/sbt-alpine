dev:
	docker run -it --name="spsa" alpine:3.11 sh

build:
	docker build -t spsa .

run:
	docker run -it --name="spsa" spsa sh
