## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## Create namespace
`kubectl create namespace tomcat`{{execute}}

## Use the custom resource for the demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}
