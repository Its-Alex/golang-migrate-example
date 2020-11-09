# golang-migrate-example

Example of use of golang-migrate, with postgres (13).

## Requirements

- `docker`
- `docker-compose`

## Hack

First you must setup database

```
$ docker-compose up -d
```

You can now execute up or down migrations:

```
$ ./scripts/execute-up-migrations.sh
```

or:

```
$ ./scripts/execute-down-migrations.sh
```
