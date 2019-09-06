##get the sources of DNSPing kubernetes configuration:

`git clone https://github.com/jfclere/DNSPing-tomcat.git`{{execute}}

`cd DNSPing-tomcat`{{execute}}

## create the namespace and deploy the image:

`kubectl create namespace tomcat`{{execute}}

`kubectl create -f deployment.yaml`{{execute}}

## create the service

`kubetcl create -f service.yaml`{{execute}}

