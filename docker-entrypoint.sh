#!/usr/bin/env bash

if [ "$PORT" ]; then
    export MB_JETTY_PORT="$PORT"
fi

export MB_DB_CONNECTION_URI=$(sed "s/postgres:/jdbc:postgresql:/g" <<< "$DATABASE_URL")

if [ -z "$@" ]
then
    /app/run_metabase.sh
else
    exec "$@"
fi