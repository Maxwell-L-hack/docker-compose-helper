#!/usr/bin/env bash

BLUE = '\033[1;34m'

read -rp "Do you have a preexisting Docker Compose file? (y/n) " compose_yn

if [[ "$compose_yn" == "y" ]]; then
    read -rp "Please enter the file path: " existing_compose_path;
    filename=$(echo $existing_compose_path | grep -oG 'compose.yaml\|docker-compose.yml')
    echo $filename
    if [[ $filename != "compose.yaml" ]] && [[ "$filename" != "docker-compose.yml" ]]; then
        read -rp "Would you like to create one? (y/n) " create_compose
        if [[ "$create_compose" == "y" ]]; then
            touch compose.yaml;
        else
                echo "Well, you're gonna' need one if you want to use one.";
        fi
    fi
fi