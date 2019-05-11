FROM jenkins/jenkins

WORKDIR /usr/src/app

VOLUME $PWD/jenkins_home /var/jenkins_home

EXPOSE 8080

