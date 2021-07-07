To deploy your cloud environment along with your application, simply run the Cloud Deployer :

`java -jar target/cloudDeployer-1.0-SNAPSHOT-jar-with-dependencies.jar`{{execute}}

If everything went alright, you can then use `oc get routes`{{execute}} to get the link to your freshly deployed application.
