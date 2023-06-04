# docker-icecast

A Dockerfile for running [icecast2](https://icecast.org/) in a container.

### Configuration
- Mount your icecast.xml to `/etc/icecast.xml`
- Publish necessary ports

#### docker run
```
docker run -d --name icecast2 \ 
--restart=always \
--publish [IP]:[HOST_PORT]:[CONTAINER_PORT] \
--volume ./icecast.xml:/etc/icecast.xml \
thoralfschillat/icecast2
```

#### docker-compose.yml
```
icecast2:
  image: thoralfschillat/icecast2
  container_name: icecast2
  restart: always
  ports:
    - [IP]:[HOST_PORT]:[CONTAINER_PORT]
  volumes:
    - ./icecast.xml:/etc/icecast.xml
```