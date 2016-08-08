FROM sequenceiq/hadoop-docker:2.7.1

MAINTAINER chaozhang

# hadoop-common fixes
ENV PATH $PATH:$HADOOP_PREFIX/bin

# pig
RUN curl -s  http://apache.fayea.com/pig/pig-0.16.0/pig-0.16.0.tar.gz  | tar -xz -C /usr/local
ENV PIG_HOME /usr/local/pig-0.15.0/
RUN ln -s $PIG_HOME /usr/local/pig
ENV PATH $PATH:$PIG_HOME/bin

# hive
RUN curl -s  http://apache.fayea.com/hive/hive-1.2.1/apache-hive-1.2.1-bin.tar.gz  | tar -xz -C /usr/local
ENV HIVE_HOME /usr/local/apache-hive-1.2.1-bin/
RUN ln -s $HIVE_HOME /usr/local/hive
ENV PATH $PATH:$HIVE_HOME/bin
