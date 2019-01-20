#!/bin/sh
set -eu
set -o pipefail

HOSTGROUP1="local"
HOSTGROUP2="remote_vms"

# Запустить на локальном хосте
# ansible-playbook play.yml -i inventory/inventory --extra-vars "host_var='${HOSTGROUP1}'"

# Запустить на удаленном хосте
ansible-playbook play.yml -i inventory/inventory --extra-vars "host_var='${HOSTGROUP2}'"