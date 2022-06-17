.PHONY: test

build:
	docker build -t yamlconf .

test:
	docker run --rm -v `pwd`/src:/root/app/src \
	-v `pwd`/test:/root/app/test yamlconf \
		sh -c "pytest"
