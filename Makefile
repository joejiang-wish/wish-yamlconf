
build:
	docker build -t yamlconf .

test: build
	docker run -v `pwd`/src:/root/app/src \
	-v `pwd`/test:/root/app/test yamlconf \
		sh -c "pytest"