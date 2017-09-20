# Install jdk
yum install java-1.8.0-openjdk -y
export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk

# Installing maven
wget http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar xvf apache-maven-3.5.0-bin.tar.gz
mv apache-maven-3.5.0  /usr/local/apache-maven
export M2_HOME=/usr/local/apache-maven
export M2=$M2_HOME/bin 
export PATH=$M2:$PATH

