#!/bin/bash

echo -e "\v ---This script is for apt only---\v"

softwares=("neofetch" "gdebi" "vlc" "libreoffice" "gimp" "software-properties-common" "apt-transport-https" "wget" "curl" "python3" "pip3" "pipenv" "thunderbird" "htop" "spotify-client" "code" "kodi" "timeshift" "telegram-desktop")

for i in "${softwares[@]}"
do
    read -p "Do you wanna install $i? [y/n]: " choice
    case $choice in
        y|Y)
            echo -e "\v ---Installing $i---\v"
            sudo apt install $i
            ;;
        n|N)
            echo -e "\v ---Skipping $i---\v"
            ;;
        *)
            echo "oh come on, just say y or n, it's not that hard"
            ;;
    esac
done