## Build image
```
docker build -t my-neo4j .
```

## Run Docker Compose
```
docker-compose -f docker-compose.yml up -d
```

## Scale
```
docker-compose -f docker-compose.yml scale neo4j_extra=3
```

## Terminate
```
docker-compose -f docker-compose.yml down
```