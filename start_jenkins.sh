docker network create jenkins
#docker run --name myjenkins --detach --network jenkins --env DOCKER_HOST=tcp://docker:2376 --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client:ro -it --volume /var/run/docker.sock:/var/run/docker.sock --publish 8080:8080 --publish 50000:50000 myjenkins
docker run --name myjenkins --rm --detach --network jenkins --volume jenkins-data:/var/jenkins_home -it --volume /var/run/docker.sock:/var/run/docker.sock --publish 8080:8080 --publish 50000:50000 myjenkins
