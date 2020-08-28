## Heath Check the Cluster

`kubectl cluster-info`{{execute}}

## Use the custom resource for the demo-webapp

`curl -O https://raw.githubusercontent.com/jfclere/demo-webapp/master/custom_resource.yaml`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started

`kubectl get pods`{{execute}}

## check services

`kubectl get services`{{execute}}

## expose the deployement

`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-balancer`{{execute}}

## check nsloop tomcat-demo in one of the pods.

`POD=$(kubectl get pod -l application=tomcat-demo -o jsonpath="{.items[0].metadata.name}")`{{execute}}

`kubectl exec -it ${POD} -- sh`{{execute}}
