## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## scale to 2 pofs
`kubectl scale --replicas=2 deployment tomcat-demo`{{execute}}

## check the logs

`kubectl logs tomcat-demo-pod`{{execute}}

## run shell on the node

`kubectl exec -it tomcat-demo-pod sh`{{execute}}

## try dns loopup

`nslookup tomcat-demo`{{execute}}

`exit`{{execute}}

## expose the service directly

`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-balancer`{{execute}}

## get the port

`kubectl get services`{{execute}}

## check counter
[web application](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com)

## via curl
`PORT=$(kubectl get service | grep LoadBalancer | sed 's!:! !' | sed 's!\/! !' | awk ' { print $6 } ')`{{execute}}
`echo "https://[[HOST_SUBDOMAIN]]-${PORT}-[[KATACODA_HOST]].environments.katacoda.com"`{{execute}}

## stop a node

`kubectl delete pods tomcat-demo-pod`{{execute}}
