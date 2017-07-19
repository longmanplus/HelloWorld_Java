FROM java:openjdk-6b38-jdk
MAINTAINER longmanplus

#dependencies
RUN apt-get update
RUN apt-get upgrade -y

#create user
RUN useradd -ms /bin/bash user01
USER user01
WORKDIR /home/user01

#specific tasks
COPY Hello /home/user01/
#RUN export CLASSPATH=$CLASSPATH:.
#RUN java -jar HelloWorld.jar
#RUN java -classpath HelloWorld
#RUN ./Hello
