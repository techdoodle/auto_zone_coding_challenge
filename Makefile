install:
	pip3 install -r requirements.txt


docker_build:
	docker build -t <your-dockerhub-name>/flask-kubernetes .


docker_push:
	docker login
	docker push <your-dockerhub-name>/flask-kubernetes


minikube_run:
	minikube start --driver=docker
	kubectl apply -f deployment.yaml
	minikube service flask-app-service


port_forward:
	kubectl port-forward <pod-name> 5000:5000


get_pod:
	kubectl get pods