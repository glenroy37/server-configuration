#!/bin/bash
source ./.env

[ -z "$MARIADB_ROOT_PASSWORD" ] && echo "MARIADB_ROOT_PASSWORD not set" && exit 1
[ -z "$NUMMUS_DB_PASSWORD" ] && echo "NUMMUS_DB_PASSWORD not set" && exit 1
ansible-playbook nummus/init.yml