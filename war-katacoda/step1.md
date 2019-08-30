# Fast testing

## Deploy operator
`git clone https://github.com/web-servers/tomcat-operator.git $GOPATH/src/github.com/tomcat-operator`{{execute}}

`cd $GOPATH/src/github.com/tomcat-operator`{{execute}}

`kubectl create namespace tomcat-operator`{{execute}}

`make run-kubernetes`{{execute}}

## Create CR
`cd /root/demo-webapp`{{execute}}
`kubectl apply -f ./custom_resource.yaml`{{execute}}

# Normal procedure



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

`docker build . -f Dockerfile.webapp -t docker.io/maxbeck/tomcat-demo:latest --build-arg war=sample.war`{{execute}}

`docker push docker.io/maxbeck/tomcat-demo:latest`{{execute}}