# Dockerized Jenkins master

## Build
To prepare and build our jenkins instance just run:
```
docker-compose build --build-arg JENKINS_UID=$(id -u) --build-arg JENKINS_GID=$(id -g)
```
If it has already been built you can add **--force-rm** parameter to clean old data.

## Run
```
docker-compose up -d
```
