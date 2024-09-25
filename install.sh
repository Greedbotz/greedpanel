#!/bin/bash

# Bersihkan layar
clear

# Pilihan menu
echo "====================================================="
echo " "
echo "            Tools Auto Install Panel"
echo "                  by maulana"
echo " "
echo "====================================================="
echo "Pilih command untuk dijalankan:"
echo "1) installpanel dan buat node"
echo "2) install wings"
echo "3) add admin panel"
echo "4) Keluar"
echo " "

# Minta input pilihan dari pengguna
read -p "Masukkan pilihan Anda: " choice

# Aksi berdasarkan pilihan pengguna
case $choice in
    1)
        clear
        echo "Mengunduh dan menjalankan installpanel..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/vhsksk.sh
        chmod +x vhsksk.sh
        ./vhsksk.sh
        ;;
    2)
        clear
        echo "Mengunduh dan menjalankan startwings..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/fbsjsk.sh
        chmod +x fbsjsk.sh
        ./fbsjsk.sh
        ;;
    3)
        clear
        echo "Mengunduh dan menjalankan adduser..."
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/bfjslag.sh
        chmod +x bfjslag.sh
        ./bfjslag.sh
        ;;
    4)
        echo "Keluar."
        exit 0
        ;;
    *)
        echo "Pilihan tidak valid, silakan coba lagi."
        ;;
esac
