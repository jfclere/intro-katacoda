OpenShift has the concept of "projects". These projects allow you to group components of a system together without interfering or conflicting with other deployments on the system.

Using projects can make the management of large-scale deployments much simpler. Instead of seeing all the applications deployed, you can focus your view depending on what you are trying to achieve. If required, it is still possible to see all deployed components at once.

## Setting up the environment
*Log into OpenShift :*

`oc login localhost:8443 --username=admin --password=admin --insecure-skip-tls-verify=true`{{execute}}

*We'll call this project "tomcat-in-the-cloud" :*

`oc new-project tomcat-in-the-cloud`{{execute}}

With the project created, the CLI context switches to the project. It is possible to change projects, or contexts, at any time.

The command `oc projects`{{execute}} lists all projects and `oc project <project-name>` allows you to switch projects if needed.

Add the permission so each pod can read the list of other tomcat-in-the-cloud pods :

`oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)`{{execute}}

## Deploying the web application
We created a simple rest clusterized counter demo to test how it operates in the cloud environment.

*Clone the demo from Github :*

`git clone https://github.com/web-servers/tomcat-in-the-cloud.git`{{execute}}

Then simply build and deploy it using maven

`mvn -f tomcat-in-the-cloud/pom.xml fabric8:deploy`{{execute}}

## Monitor the execution
You can orchestrate your containers either via the command line or the graphical user interface
of OpenShift. The following sections will give you some instructions on how to monitor the execution
of your running application using both of these tools.

### *Using the command line*
*Check the pods :*

`oc get pods`{{execute}}

*Check the host (route) to access the application :*

`oc describe routes`{{execute}}

> The attribute *Requested Host* provides the URL to access your application.

*Scale the application to 3 pods :*

`oc scale dc tomcat-in-the-cloud --replicas=3`{{execute}}

### *Using the graphical user interface (GUI)*
*Access the GUI :*
- Select the **Dashboard** view at the top of the screen, you'll get redirected to the OpenShift GUI
- Log in with your username/password (**admin/admin** in this scenario)
- Select the project named "tomcat-in-the-cloud"

*Check the pods :*
- Go to **Applications > Pods** to list them
- Select them to display their detailed information (Status, Used volumes, Containers, etc.)

*Check the route to access the application :*
- Go to **Applications > Routes** to get a list of the routes related to your applications
- Click on your application's **Hostname** to display it

*Scale the application to 3 pods :*
- Go to **Applications > Deployments**
- Select the deployment configuration you'd like to edit and select the **latest** deployment
- In the **Details** section, use the arrows to increase or decrease the number of running pods
