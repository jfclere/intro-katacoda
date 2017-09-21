# Use SSH to run each step on the host for setup

# Install jdk
ssh root@host01 "yum install java-1.8.0-openjdk-devel.x86_64 -y && export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk"

# Installing maven
ssh root@host01 "wget http://www.pirbot.com/mirrors/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz"
ssh root@host01 "tar xvf apache-maven-3.5.0-bin.tar.gz && mv apache-maven-3.5.0  /usr/local/apache-maven"
ssh root@host01 "export M2_HOME=/usr/local/apache-maven; export M2=$M2_HOME/bin; export PATH=$M2:$PATH"

# Clone my example
ssh root@host01 "git clone https://github.com/jfclere/tomcat-in-the-cloud && cd tomcat-in-the-cloud"

# Set up openshift
ssh root@host01 "oc login localhost:8443 --username=admin --password=admin --insecure-skip-tls-verify=true"
ssh root@host01 "oc new-project tomcat-in-the-cloud"
ssh root@host01 "oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default -n $(oc project -q)"

# Deploy the app
ssh root@host01 "mvn fabric8:deploy"

