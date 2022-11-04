#/bin/bash
set -e
echo 'run kind create cluster' 
kind create cluster --config config.yaml
echo "apply kind ingress nginx"
kubectl apply --filename https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml


echo "waitng ingress controller"
sleep 20
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
