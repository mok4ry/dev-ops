#!/bin/bash

# Find all cron jobs created by all users

for user in $(cut -f1 -d: /etc/passwd); do
    sudo crontab -u $user -l;
done
