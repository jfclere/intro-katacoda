## Edit the property file
With the file explorer, open __cloudDeployer > config > cloud.properties__.

__Set the REGISTRY_ADDRESS__


This is the address of your docker registry. You can find this information with the following command:

`oc get svc docker-registry`{{execute}}

Set the value with its ip address followed by its port like so: __ip:port__.

__Set the HOST_ADDRESS__


This property requires the full name of the host (you can also put the ip address but not in Katacoda because the route won't work if you do so !).
You'll find the full host name by clicking on the Dashboard view. This will open a new tab on your browser with a fully working OpenShift server. Then simply copy its host name in the URL ([katacoda_id]-8443-simba02.environments.katacoda.com).

__Set the REGISTRY_ID__


The registry_id is the name of your OpenShift project. We don't have a project yet so lets create one.

*Start by login into Openshift:*

`oc login localhost:8443 --username=admin --password=admin --insecure-skip-tls-verify=true`{{execute}}

*Then create the project, we'll call it my-clustered-app but any name will do*

`oc new-project my-clustered-app`{{execute}}

You can then copy/paste that name into the registry_id property in our configuration file.

__Set the WAR__


The war is simply the path to the war file you would like to deploy on the cloud. This path must be relative to the Dockerfile location of the tomcat-in-the-cloud repo and in the docker context. So make sure to place your war file into the tomcat-in-the-cloud folder. For this course, we provided a sample app called *sample.war* at the root of the cloud deploy repository.

*Move the sample.war to tomcat-in-the-cloud folder:*

`mv sample.war tomcat-in-the-cloud`{{execute}}

Then simply write *sample.war* as the value of this property.

__Set the DOCKER_USERNAME and the DOCKER_TOKEN__


If you've followed the command of this tutorial, your DOCKER_USERNAME must be *admin*. That is the username we loged into Openshift with. If you're not sure which user is currently logged in you can use the command : `oc whoami`{{execute}}.

Now for your DOCKER_TOKEN that is the token of your current user :

`oc whoami -t`{{execute}}

## Get ready for deployment
You're all set ! You can find the full documentation of all the properties by [clicking here](https://github.com/maxime-beck/cloudDeployer#configure)

The last thing before deployment is to allow the pods to see their peers for the current project (cluster) :

`oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)`{{execute}}

__If you don't, the pods won't be able to communicate and session replication will not work.__
