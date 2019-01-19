#!/bin/bash
jenkinssecret=$(docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
java -jar /root/jenkins-cli.jar -s http://localhost:8080 -auth admin:$jenkinssecret build lasttestbuild
sleep 300
