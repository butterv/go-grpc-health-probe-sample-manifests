run:
	kubectl apply -k k8s/local/

stop:
	kubectl delete -k k8s/local/
