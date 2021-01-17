#!/bin/bash
source ./.env

[ -z "$POSTGRES_PASSWORD" ] && echo "POSTGRES_PASSWORD not set" && exit 1
ansible-playbook postgres/start.yml
