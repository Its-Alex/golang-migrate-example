#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

docker run --rm \
    --network "golang-migrate-example" \
    -v "${PWD}/migrations/:/migrations/" \
    migrate/migrate:v4.13.0 -path=/migrations/ -database "postgres://migrate:password@postgres:5432/migrate?sslmode=disable" up
