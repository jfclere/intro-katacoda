## Edit the source of the webapp
<https://github.com/jfclere/demo-webapp/blob/master/src/main/java/org/example/tomcat/cloud/TestServlet.java>

## Remove what was deployed
`kubectl get all`{{execute}}
`kubectl delete tomcat.tomcat.apache.org/tomcatdemo`{{execute}}
`kubectl delete deployment.apps/tomcat-demo`{{execute}}

## Use the custom resource for the NEW demo-webapp
`cd /root/demo-webapp`{{execute}}

`kubectl apply -f ./custom_resource.yaml`{{execute}}

## Set how it is done
<https://github.com/jfclere/tomcat-operator/blob/master/build/Dockerfile.mavenbuilder>
<https://github.com/jfclere/tomcat-operator/blob/master/build/mavenbuilder.sh>
The operator mount /mnt in webapp and start the tomcat image.

## the tomcat pods started
`kubectl get pods`{{execute}}

## Check the publicly exposed NEW webapp
[web application](https://[[HOST_SUBDOMAIN]]-30666-[[KATACODA_HOST]].environments.katacoda.com/demo)
