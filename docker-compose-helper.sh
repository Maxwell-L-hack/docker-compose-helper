#!/usr/bin/env bash

BLUE = '\033[1;34m'

echo "Do you have a preexisting Docker Compose file? (y/n)"

read compose_yn

if [[ "$compose_yn" == "y" ]]; then
    read -rp "Please enter the file path: " existing_compose_path;
else
    echo "Would you like to create one? (y/n)".
    read -r create_compose
    if [[ "$create_compose" == "y" ]]; then
        touch compose.yaml;
    else
            echo "Well, you're gonna' need one if you want to use one.";
    fi
fi