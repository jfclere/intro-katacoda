# test stuff
ssh root@host01 "> /tmp/toto"

# Install jdk
yum install java-1.8.0-openjdk-devel.x86_64 -y > /tmp/toto.txt
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk

# Installing maven
wget https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.5.0/apache-maven-3.5.0-bin.tar.gz
tar xvf apache-maven-3.5.0-bin.tar.gz
mv apache-maven-3.5.0  /usr/local/apache-maven
export M2_HOME=/usr/local/apache-maven
export M2=$M2_HOME/bin 
export PATH=$M2:$PATH

