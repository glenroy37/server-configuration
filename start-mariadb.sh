#!/bin/bash
source ./.env

[ -z "$MARIADB_ROOT_PASSWORD" ] && echo "MARIADB_ROOT_PASSWORD not set" && exit 1
ansible-playbook mariadb/start.yml