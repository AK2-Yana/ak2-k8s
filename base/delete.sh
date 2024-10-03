kubectl delete -f ./config/postgres-conf.yml
kubectl delete -f ./config/posgres-secret.yml

kubectl delete -f ./volumes/sc-lv.yml
kubectl delete -f ./volumes/pv.yml
kubectl delete -f ./volumes/pvc.yml

kubectl delete -f ./service/service-patch.yml

kubectl delete -f ./deployments/db-deployment-patch.yml
kubectl delete -f ./deployments/web-deployment-patch.yml