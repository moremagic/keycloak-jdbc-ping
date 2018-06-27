# keycloak-jdbc-ping
keycloak Dockerfile(jdbc-ping, postgres)

## quickstart
network create
```console
$ docker network create mynet
```

postgres start
```console
$ docker run --name postgres --net mynet -e POSTGRES_DATABASE=keycloak -e POSTGRES_USER=keycloak -e POSTGRES_PASSWORD=password -e POSTGRES_ROOT_PASSWORD=password -d postgres
```

keycloak start
```console
$ docker run -dP --name keycloak --network mynet -e POSTGRES_DATABASE=keycloak -e POSTGRES_USER=keycloak -e POSTGRES_PASSWORD=password moremagic/keycloak-jdbc-ping
```
