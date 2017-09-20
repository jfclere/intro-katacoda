~/.launch.sh
git clone https://github.com/iSma/tomcat-in-the-cloud
cd tomcat-in-the-cloud
oc login localhost:8443 --username=admin --password=admin --insecure-skip-tls-verify=true
oc new-project tomcat-in-the-cloud
oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)
mvn fabric8:deploy
