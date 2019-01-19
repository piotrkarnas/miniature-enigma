#!/bin/bash
jenkinssecret=$(docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
while (true); do
	java -jar /root/jenkins-cli.jar -s http://127.0.0.1:8080 -auth admin:$jenkinssecret build lasttestbuild
	sleep 300
done
