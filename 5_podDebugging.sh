POD_NAME="nginx-deployment-55d6cd667f-dnn45"

kubectl logs $POD_NAME
kubectl exec -it $POD_NAME -- /bin/bash