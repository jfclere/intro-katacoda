## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## Use the custom resource for the demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## check services
`kubectl get services`{{execute}}

## expose the deployement
`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-balancer`{{execute}}

## check nsloop tomcat-demo in on of the pods.
`kubectl exec -it tomcat-demo-pod sh`{{execute}}
