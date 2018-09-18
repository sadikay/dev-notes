#### Stop running containers
`docker stop $(docker ps -aq)`

#### Clean containers
`docker rm $(docker ps -aq)`

#### Clean image
`docker rmi [IMAGE_ID]`

#### Connect a container
```
docker ps -a # get CONTAINER_ID
docker exec -it [CONTAINER_ID] bash
```

#### Check health of container has a `VIRTUAL_HOST` from development
Conntect to container then:

`curl http://localhost:80 --header "Host: yourdomain.com"`
