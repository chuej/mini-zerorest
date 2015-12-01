REGISTRY=chuej
NAME=mini-zerorest
TAG=latest

build:
	docker build -t ${NAME} .

tag: build
	docker tag -f ${NAME} ${REGISTRY}/${NAME}:${TAG}

publish: tag
	docker push ${REGISTRY}/${NAME}:${TAG}
