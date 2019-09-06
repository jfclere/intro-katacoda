## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## scale to 2 pofs
`kubectl scale --replicas=2 deployement tomcat-demo`{{execute}}

## check the logs

`kubectl logs tomcat-demo-pod`{{execute}}

## run shell on the node

`kubectl exec -it tomcat-demo-pod sh`{{execute}}

## try dns loopup

`nslookup tomcat-demo`{{execute}}

`exit`{{execute}}

## expose the service directly

`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-demo`{{execute}}

## get the port

`kubectl get services`{{execute}}

## check counter

## stop a node

`kubectl delete pods tomcat-demo-pod`{{execute}}
