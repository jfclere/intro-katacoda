check out the demo for github

`git clone https://github.com/jfclere/demo-webapp`{{execute}}

build the webapp it using maven

`cd demo-webapp`{{execute}}

`mvn install`{{execute}}

prepare the image

`cd`{{execute}}

`git clone https://github.com/jfclere/tomcat-kubernetes.git`{{execute}}

`cd tomcat-kubernetes`{{execute}}

`cp /root/demo-webapp/target/demo-1.0.war sample.war`{{execute}}

`mvn install`{{execute}}

`docker login`{{execute}}

`docker build -t docker.io/jfclere/tomcat-demo .`{{execute}}

`docker push jfclere/tomcat-demo`{{execute}}


