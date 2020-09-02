run:
	kubectl apply -k k8s/overlays/local/

stop:
	kubectl delete -k k8s/overlays/local/
