# keycloak-jdbc-ping
keycloak Dockerfile(jdbc-ping, postgres)

## quickstart
network create
```console
$ docker network create mynet
```

postgres start
```console
$ docker run -d \
  --name postgres \
  --net mynet \
  -e POSTGRES_DATABASE=keycloak \
  -e POSTGRES_USER=keycloak \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_ROOT_PASSWORD=password \
  postgres
```

keycloak start
```console
$ docker run -dP \
  --name keycloak \
  --network mynet \
  -e DB_USER=keycloak \
  -e DB_PASSWORD=password \
  -e DB_DATABASE=keycloak \
  -e KEYCLOAK_USER=admin \
  -e KEYCLOAK_PASSWORD=admin \
  moremagic/keycloak-jdbc-ping
```
