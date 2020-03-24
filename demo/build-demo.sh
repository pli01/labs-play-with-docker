#!/bin/sh

git clone -b develop https://github.com/LAB-MI/candilibV2
cd candilibV2
time make build-all

exit 0
export FRONT_ADMIN_PORT=81
export DBDATA=../test-db

time make up-all
time make test-all
time make init-db-e2e
