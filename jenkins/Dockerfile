
FROM jenkins
MAINTAINER liujianwei@vcredit.com
 
# Switch user to root so that we can install apps (jenkins image switches to user "jenkins" in the end)
USER root

# Install Docker prerequisites
RUN curl -sSL https://get.daocloud.io/docker | sh
RUN curl -L https://get.daocloud.io/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# Install NodeJS
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
    && echo 'deb https://deb.nodesource.com/node_4.x trusty main' > /etc/apt/sources.list.d/nodesource.list \
    && echo 'deb-src https://deb.nodesource.com/node_4.x trusty main' >> /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs
RUN npm i -g nrm && nrm use taobao

# Install Maven
RUN  apt-get purge --auto-remove  -y maven \
    && wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN cd / &&  tar xzvf apache-maven-3.3.9-bin.tar.gz && cp -R apache-maven-3.3.9 /usr/local && ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn

# Switch user back to Jenkins
USER jenkins

RUN echo "export M2_HOME=/usr/local/apache-maven-3.3.9" >> ~/.profile
RUN . ~/.profile && nrm use taobao
COPY settings.xml /usr/local/apache-maven-3.3.9/conf/settings.xml
RUN echo "Maven is on version `mvn -v`"