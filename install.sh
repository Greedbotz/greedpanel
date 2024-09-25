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
        curl -O https://raw.githubusercontent.com/Greedbotz/greedpanel/main/installpanel.sh
        chmod +x installpanel.sh
        ./installpanel.sh
        ;;
    2)
        clear
        echo "Mengunduh dan menjalankan startwings..."
        curl -O https://raw.githubusercontent.com/Greedbotz/greedpanel/main/startwings.sh
        chmod +x startwings.sh
        ./startwings.sh
        ;;
    3)
        clear
        echo "Mengunduh dan menjalankan adduser..."
        curl -O https://raw.githubusercontent.com/Greedbotz/greedpanel/main/adduser.sh
        chmod +x adduser.sh
        ./adduser.sh
        ;;
    4)
        echo "Keluar."
        exit 0
        ;;
    *)
        echo "Pilihan tidak valid, silakan coba lagi."
        ;;
esac
