apiVersion: apps/v1
kind: Deployment
metadata:
  name: go-grpc-health-probe-sample
  labels:
    app: go-grpc-health-probe-sample
spec:
  replicas: 1
  selector:
    matchLabels:
      app: go-grpc-health-probe-sample
  template:
    metadata:
      labels:
        app: go-grpc-health-probe-sample
    spec:
      containers:
        - name: grpc-gateway
          image: gcr.io/GOOGLE_CLOUD_PROJECT/grpc-gateway:COMMIT_SHA
          ports:
            - containerPort: 8080
        - name: grpc-gateway
          image: gcr.io/GOOGLE_CLOUD_PROJECT/grpc-server:COMMIT_SHA
          ports:
            - containerPort: 8081
