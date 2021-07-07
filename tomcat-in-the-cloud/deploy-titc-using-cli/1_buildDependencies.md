In order to function properly, _Tomcat-in-the-cloud_ needs a member provider that will essentially discover all running instances of Tomcat in the cloud environment. Currently, we developed a member provider that works for _Kubernetes_ and _OpenShift_ called **CloudMemberProvider**. We plan on extending that list by providing support for more cloud services in the near future.

_Tomcat-in-the-cloud_ also needs a way to establish connection throughout the cloud network so the HTTP requests can be sent to the right instances of the cluster. To do that, it depends upon another library that we call **CloudStreamProvider**. Stream providers can use a variety of different types of connections. We currently support unsecured and secured (via token) connections.

The first step is therefore to build these dependencies. **It's important that you follow the building order described bellow** as those dependencies depend on each other.

## A) Building CloudStreamProvider
*Clone the CloudStreamProvider repository :*

`git clone https://github.com/maxime-beck/cloudStreamProvider.git`{{execute}}

*Run the building process using Maven :*

`mvn -f cloudStreamProvider/pom.xml install`{{execute}}

## B) Building CloudMemberProvider
*Clone the CloudMemberProvider repository :*

`git clone https://github.com/maxime-beck/cloudMemberProvider.git`{{execute}}

*Run the building process using Maven :*

`mvn -f cloudMemberProvider/pom.xml install`{{execute}}
