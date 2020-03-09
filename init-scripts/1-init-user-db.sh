#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER sleepingnext;
	CREATE DATABASE sleepingnext;
	ALTER USER sleepingnext PASSWORD 'kevin99123';
	GRANT ALL PRIVILEGES ON DATABASE sleepingnext TO sleepingnext;
EOSQL
