#!/bin/bash
source ./.env

[ -z "$MARIADB_ROOT_PASSWORD" ] && echo "MARIADB_ROOT_PASSWORD not set" && exit 1
[ -z "$NEXTCLOUD_DB_PASSWORD" ] && echo "NEXTCLOUD_DB_PASSWORD not set" && exit 1
ansible-playbook nextcloud/init.yml