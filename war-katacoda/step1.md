Prepare the webapp image

`git clone https://github.com/jfclere/tomcat-openshift.git`{{execute}}

`cd tomcat-openshift`{{execute}}

`mvn install`{{execute}}

`docker build -t docker.io/jfclere/tomcat-demo .`{{execute}}
