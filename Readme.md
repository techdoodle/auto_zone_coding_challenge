# Deploying a Flask API on Kubernetes using minikube

This repo contains code that creates an application 
1. that returns some data to https requests
2. Is highly available
3. Is able to persist data beyond the life of the application
4. Securely stores and accesses its web security certificate
5. Only receives requests once the application is started
6. Automatically restarts if the application is unresponsive
7. Only one replica can be unavailable at any time


## Prerequisites
1. Have `Docker` and the `Kubernetes CLI` (`kubectl`) installed together with `Minikube` (https://kubernetes.io/docs/tasks/tools/)

## Getting started
1. Clone the repository
2. For your convenience makefile is created with all the relevant commands to build the application. If you dont have make installed, you can run the following command `brew install make`
3. run `make install` to install the dependencies.
4. run `make docker_build` to build the docker image eventually being used by minikube. You need to provide the name of your dockerhub in the command. `<your-dockerhub-name>`.
5. run `make docker_push` to push your image to the hub. Again you need to replace `<your-dockerhub-name>` with your docker hub name
6. run `make minikube_run` this would start and deploy a kubernetes cluster.
7. If after running the above step you face error in opening the node in your browser then run `make get_pod` to get a list of deployed pods and choose any and then replace it in `port_forward` command. Run `make port_forward` and check your browser at `127.0.0.1:5000`


# GCP 10000 pub sub topics

You can find the terraform code under : `gcp_terraform/google_pub_sub.tf`