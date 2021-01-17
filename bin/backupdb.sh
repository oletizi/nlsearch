#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
outfile=${dir}/../sql/init/dump.sql

mysqldump --protocol=tcp -h localhost -u root -p --all-databases > "${outfile}"
