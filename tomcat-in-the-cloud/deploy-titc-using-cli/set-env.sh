~/.launch.sh
# Install jdk
yum install java-1.8.0-openjdk-devel.x86_64 -y
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk

# Installing maven
wget http://www.pirbot.com/mirrors/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar xvf apache-maven-3.5.0-bin.tar.gz
mv apache-maven-3.5.0  /usr/local/apache-maven
export M2_HOME=/usr/local/apache-maven
export M2=$M2_HOME/bin 
export PATH=$M2:$PATH
