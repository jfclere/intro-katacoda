install the tools (optional?):

`export RELEASE_VERSION=v0.10.0`{{execute}}

`curl -OJL https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu`{{execute}}

`chmod +x operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu && sudo mkdir -p /usr/local/bin/ && sudo cp operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu /usr/local/bin/operator-sdk && rm operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu`{{execute}}

`mkdir -p $GOPATH/src/github.com`{{execute}}

build the operator

`apt install mercurial -y`{{execute}}

`git clone https://github.com/web-servers/tomcat-operator.git $GOPATH/src/github.com/tomcat-operator`{{execute}}

`export GO111MODULE=on`{{execute}}

`cd $GOPATH/src/github.com/tomcat-operator`{{execute}}

## Login to docker to send the image in case you push it
`docker login`{{execute}}

## Build the operator image
`make build IMAGE=jfclere/tomcat-operator`{{execute}}

## Send it to docker.io
`make push IMAGE=jfclere/tomcat-operator`{{execute}}

`kubectl create namespace tomcat-demo`{{execute}}

`kubectl config set-context --current --namespace=tomcat-demo`{{execute}}

`make run-kubernetes IMAGE=jfclere/tomcat-operator`{{execute}}
