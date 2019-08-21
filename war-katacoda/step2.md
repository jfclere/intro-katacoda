install the tools:

`RELEASE_VERSION=v0.10.0; curl -OJL https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu`{{execute}}

`chmod +x operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu && sudo mkdir -p /usr/local/bin/ && sudo cp operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu /usr/local/bin/operator-sdk && rm operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu`{{execute}}

`mkdir -p $GOPATH/src/github.com`{{execute}}

build the operator

`git clone https://github.com/web-servers/tomcat-operator.git $GOPATH/src/github.com/tomcat-operator`{{execute}}

`cd $GOPATH/src/github.com/tomcat-operator`{{execute}}

`make build`{{execute}}
