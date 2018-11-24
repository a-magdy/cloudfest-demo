build:
	docker build . -t cloudfest-demo:0.0.1

tag:
	docker tag cloudfest-demo:0.0.1 amagdy/cloudfest-demo:0.0.1

push:
	docker push amagdy/cloudfest-demo:0.0.1

push-latest:
	make build && make tag && make push

run:
	docker run --name=demo1 -d --rm -p 8000:8000 cloudfest-demo:0.0.1

stop:
	docker stop demo

open-tab:
	open http://localhost:8000

run-local:
	make build && make run ; make open-tab

k8s-local:
	kubectl apply -f kubernetes/local

k8s-gcp:
	kubectl apply -f kubernetes/gcp
