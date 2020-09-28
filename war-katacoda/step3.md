## Heath Check the Cluster
`kubectl cluster-info`{{execute}}

## Check that the operator pod is started
`kubectl get pods`{{execute}}

## Use the custom resource for the demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## check services
`kubectl get services`{{execute}}

## expose the deployement
`kubectl expose deployment tomcat-demo --type=LoadBalancer --name=tomcat-balancer`{{execute}}

## expose the deployemnt using the yaml file (better)
`kubectl create -f loadbalancer.yaml`{{execute}}

## check service to get the port of tomcat-balancer
`kubectl get services`{{execute}}
The tomcat-balancer entry have 2 ports exposed like 8787:32487,8080:32753

Use ifconfig to get the weave network address:

`ifconfig`{{execute}}

Then use curl to check the application:

`curl http://10.44.0.0:32753`{{execute}}

## Check the publicly exposed webapp
[web application](https://[[HOST_SUBDOMAIN]]-30666-[[KATACODA_HOST]].environments.katacoda.com/demo)
