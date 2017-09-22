OpenShift has the concept of projects. These projects allow you to group components of a system together without interfering or conflicting with other deployments on the system.

Using projects can make the management of large scale deployments much simpler. Instead of seeing all the applications deployed, you can focus your view depending on what you are trying to achieve. If required, it is still possible to see all deployed components at once.

## Task

Log in OpenShift.

`oc login localhost:8443 --username=admin --password=admin --insecure-skip-tls-verify=true`{{execute}}

This project will be named _tomcat-in-the-cloud_, a simple rest clusterised counter demo.

`oc new-project tomcat-in-the-cloud`{{execute}}

With the project created, the CLI context switches to the project. It is possible to change projects, or contexts, at any time.

The command `oc projects`{{execute}} would list all projects and `oc project <project-name>` if you needed to switch projects.

Add the permission so each pod can read the list of other tomcat-in-the-cloud pods.

`oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)`{{execute}}

## Task

check out the demo for github

`git clone https://github.com/jfclere/tomcat-in-the-cloud`{{execute}}

build and deploy it using maven

`cd tomcat-in-the-cloud`{{execute}}
`mvn fabric8:deploy`{{execute}}

Check the pods
`oc get pods`{{execute}}
