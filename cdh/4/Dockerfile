FROM    zetdata/ubuntu:trusty

# Installing Oracle JDK
RUN apt-get -y install python-software-properties ;\
        add-apt-repository ppa:webupd8team/java ;\
        apt-get update && apt-get -y upgrade ;\
        echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections ;\
        apt-get -y install oracle-java7-installer && apt-get clean ;\
        update-alternatives --display java ;\
        export JAVA_HOME=/usr/lib/jvm/java-7-oracle ;\
        export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec

# Cloudera CDH4 APT key and DPKG repositories
RUN apt-get -y install curl ;\
        curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add - ;\
        echo "deb [arch=amd64] http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4 contrib\ndeb-src http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4 contrib" > /etc/apt/sources.list.d/cloudera.list

# Removing anything extra and installing pseudo distributed YARN-powered Hadoop
RUN apt-get remove hadoop-0.20-conf-pseudo hadoop-0.20-mapreduce-* ;\
        apt-get update ; apt-get install -y hadoop-conf-pseudo
