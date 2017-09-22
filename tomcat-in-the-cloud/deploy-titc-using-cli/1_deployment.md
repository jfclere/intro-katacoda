OpenShift has the concept of projects. These projects allow you to group components of a system together without interfering or conflicting with other deployments on the system.

Using projects can make the management of large scale deployments much simpler. Instead of seeing all the applications deployed, you can focus your view depending on what you are trying to achieve. If required, it is still possible to see all deployed components at once.

## Task

This project will be named _tomcat-in-the-cloud_, a simple rest clusterised counter demo.c

`oc new-project tomcat-in-the-cloud`{{execute}}

With the project created, the CLI context switches to the project. It is possible to change projects, or contexts, at any time.

The command `oc projects`{{execute}} would list all projects and `oc project <project-name>` if you needed to switch projects.
