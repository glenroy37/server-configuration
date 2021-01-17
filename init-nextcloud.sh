#!/bin/bash
source ./.env

[ -z "$POSTGRES_PASSWORD" ] && echo "POSTGRESS_PASSWORD not set" && exit 1
[ -z "$NEXTCLOUD_DB_PASSWORD" ] && echo "NEXTCLOUD_DB_PASSWORD not set" && exit 1
ansible-playbook nextcloud/init.yml
