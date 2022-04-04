kubectl apply -f nginx/secret.yaml

kubectl apply -f nginx/deployment.yaml -f nginx/service.yaml

watch kubectl get pods -o wide # shows location of pods, in multiple locations

kubectl delete secret/demo-secrets
kubectl delete deployment.apps/nginx-deployment 
kubectl delete service/ingress-upstream 