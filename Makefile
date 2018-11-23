build:
	docker build . -t my-app

run:
	docker run --name="my-app" -d --rm -p 8000:8000 my-app

stop:
	docker stop my-app

open:
	open http://localhost:8000

start:
	make build && make run ; make open