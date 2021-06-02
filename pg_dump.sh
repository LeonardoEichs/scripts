#!/bin/bash

# Date format
NOW=$(date +"%Y-%m-%d")

# pg_dump command - check for yours with "which pg_dump"
PGDUMP="/usr/bin/pg_dump -Fc"

# database name
DB="database_name"

# backup path to file
BAKFILE="/root/db_bkp/bkps/$DB-$NOW.sql"

$PGDUMP $DB > $BAKFILE
