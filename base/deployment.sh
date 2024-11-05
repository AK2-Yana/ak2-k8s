kubectl apply -f ./config/postgres-conf.yml
kubectl apply -f ./config/posgres-secret.yml

kubectl apply -f ./volumes/sc-lv.yml
kubectl apply -f ./volumes/pv.yml
kubectl apply -f ./volumes/pvc.yml

kubectl apply -f ./service/service-patch.yml

kubectl apply -f ./deployments/db-deployment-patch.yml
kubectl apply -f ./deployments/web-deployment-patch.yml

# redis 
kubectl apply -f ./namespace/redis-ns.yml
kubectl apply -f ./config/redis-config.yml
kubectl apply -f ./service/redis-svc-patch.yml
kubectl apply -f ./deployments/redis-sts.yml
