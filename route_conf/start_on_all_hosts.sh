#!/bin/sh
set -eu
set -o pipefail

# Start on localhost
ansible-playbook play.yml -i inventory/inventory --extra-vars "localhost"

# Start on remote host
ansible-playbook play.yml -i inventory/inventory --extra-vars "remote_vms"