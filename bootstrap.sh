#!/bin/bash

knife bootstrap "$HOSTNAME" \
    --ssh-user "$AWS_SSH_USERNAME" \
    --node-name "$HOSTNAME" \
    --identity-file "$AWS_SSH_KEY_PATH" \
    --run-list "role[linux-common],role[chef-client],role[zabbix-agent]" \
    --sudo

