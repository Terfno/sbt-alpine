NAME:=terfno/sbt
CNAME:=sbt-alpine

dev:
	docker run -it alpine:3.11 sh

build:
	docker build -t ${NAME} .

run:
	docker run -it --name=${CNAME} ${NAME} sh

# org
c-prune:
	docker container prune

i-prune:
	docker image prune

v-prune:
	docker volume prune

prune:
	make c-prune
	make i-prune
	make v-prune
