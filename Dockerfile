FROM envoyproxy/envoy:latest
COPY service1-0.0.1-SNAPSHOT.jar /tmp/service1-0.0.1-SNAPSHOT.jar
RUN apt-get update \
 && apt-get -y install software-properties-common \
&& add-apt-repository -y ppa:webupd8team/java \
&& echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
&& echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
&& apt-get update \
&& apt-get -y install oracle-java8-installer 
EXPOSE 8001
CMD ["java", "-jar", "/tmp/service1-0.0.1-SNAPSHOT.jar"]
