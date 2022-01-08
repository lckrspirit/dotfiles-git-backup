#!/bin/bash

dockerState=$(systemctl is-active docker)

if [ "$dockerState" = "inactive" ]; then
    printf "Docker down\n"
else 
    echo "  $(docker ps -a | tail +2 | wc -l)"
fi