KEI_ENVIRONMENT_URL=""
CLUSTER_NICKNAME="tmx"

kubectl config set-cluster $CLUSTER_NICKNAME-cluster \
   --certificate-authority=/usr/local/etc/ca-certificates/cert.pem \
   --server=$KEI_ENVIRONMENT_URL/

kubectl config set-credentials $CLUSTER_NICKNAME-user \
   --token=$SECTION_API_TOKEN

kubectl config set-context $CLUSTER_NICKNAME \
   --cluster=$CLUSTER_NICKNAME-cluster \
   --user=$CLUSTER_NICKNAME-user \
   --namespace=default

kubectl config use-context $CLUSTER_NICKNAME