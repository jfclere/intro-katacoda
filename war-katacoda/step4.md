## Edit the source of the webapp
<https://github.com/jfclere/demo-webapp/blob/master/src/main/java/org/example/tomcat/cloud/TestServlet.java>

## Remove what was deployed
`kubectl delete tomcat.tomcat.apache.org/tomcatdemo`{{execute}}
`kubectl delete deployment.apps/tomcat-demo`{{execute}}

## Use the custom resource for the NEW demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## the tomcat pods started
`kubectl get pods`{{execute}}

## Check the publicly exposed NEW webapp
[web application](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com)
