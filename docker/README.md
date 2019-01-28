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

### Backup & Restore mySQL DB in Docker

#### Backup
`docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql`

#### Restore
`cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE`


#### mySQL dump
`mysqldump -P 3306  -h localhost -u root -p db_name > ~/Desktop/dump.sql`

##### mySQL import
`mysql -u root -p db_name < ~/Desktop/latest-dump.sql`
