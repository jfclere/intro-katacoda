## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## Create namespace
`kubectl create namespace tomcat-demo`{{execute}}

## Use the custom resource for the demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## check services
`kubectl get services`{{execute}}

## OOPS last minute fix... add the missing service...
`git clone https://github.com/jfclere/tomcat-openshift`{{execute}}
`cd tomcat-openshift`{{execute}}
`kubectl create -f ./service.yaml`{{execute}}
`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-balancer`{{execute}}

