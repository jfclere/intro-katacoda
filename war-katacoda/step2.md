## Install the tools (optional?):

`export RELEASE_VERSION=v0.10.0`{{execute}}

`curl -OJL https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu`{{execute}}

`chmod +x operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu && sudo mkdir -p /usr/local/bin/ && sudo mv operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu /usr/local/bin/operator-sdk`{{execute}}

## Build the operator

`cd`{{execute}}

`apt install mercurial -y`{{execute}}

`git clone https://github.com/web-servers/tomcat-operator.git`{{execute}}

`cd tomcat-operator`{{execute}}

`export GO111MODULE=on`{{execute}}

## Build the image that builds the webapp's .war

`docker build --network host -t docker.io/jfclere/tomcat-maven ./build/ -f build/Dockerfile.mavenbuilder`{{execute}}

## Build the operator image

`make image IMAGE=jfclere/tomcat-operator`{{execute}}

## Create the necessary resources

`kubectl create namespace tomcat-demo`{{execute}}

`kubectl config set-context --current --namespace=tomcat-demo`{{execute}}

`make run-kubernetes`{{execute}}
