kubectl delete -f ./volumes/sc-lv.yml
kubectl delete -f ./volumes/pv.yml
kubectl delete -f ./volumes/pvc.yml

kubectl delete -f ./service/service-patch.yml

# web
kubectl delete -f ./deployments/web-deployment-patch.yml

# DB
kubectl delete -f ./config/postgres-conf.yml
kubectl delete -f ./config/posgres-secret.yml
kubectl delete -f ./deployments/db-deployment-patch.yml

# redis 
kubectl delete -f ./config/redis-config-map.yml
kubectl delete -f ./service/redis-svc-patch.yml
kubectl delete -f ./deployments/redis-sts.yml

# Network
kubectl delete -f ./network/nw.yml