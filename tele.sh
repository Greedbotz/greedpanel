#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <option> <panel_domain> <node_domain> <token (optional for wings)>"
    exit 1
fi

choice=$1
panel_domain=$2
node_domain=$3
token=$4

case $choice in
    1)
        echo "Mengunduh dan menjalankan installpanel..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdks/install.sh
        chmod +x install.sh
        ./install.sh $panel_domain $node_domain
        ;;
    2)
        echo "Mengunduh dan menjalankan startwings..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdks/wings.sh
        chmod +x wings.sh
        ./wings.sh $token
        ;;
    3)
        echo "Mengunduh dan menjalankan adduser..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdks/user.sh
        chmod +x user.sh
        ./user.sh
        ;;
    4)
        echo "Keluar."
        exit 0
        ;;
    *)
        echo "Pilihan tidak valid, silakan coba lagi."
        exit 1
        ;;
esac
