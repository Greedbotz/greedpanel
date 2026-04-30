#!/bin/bash

# Fungsi untuk animasi teks mengetik
typing_effect() {
    local text="$1"
    local delay=0.02
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo ""
}

# Fungsi untuk animasi loading sederhana
loading_anim() {
    local duration=$1
    local spin='-\|/'
    local end=$((SECONDS + duration))
    while [ $SECONDS -lt $end ]; do
        for i in {0..3}; do
            echo -ne "\r[${spin:$i:1}] Mohon tunggu sebentar... "
            sleep 0.1
        done
    done
    echo -e "\r[+] Selesai!                         "
}

# Bersihkan layar
clear

# Header dengan sedikit delay agar estetik
echo "======================================================"
typing_effect "            Tools Auto Install Panel"
typing_effect "                  by maulana"
echo "======================================================"
sleep 0.5

echo -e "\nPilih command untuk dijalankan:"
echo "1) 🚀 Install Panel dan Buat Node"
echo "2) 💸 Install Wings"
echo "3) 👤 Add Admin Panel"
echo "4) ❌ Keluar"
echo ""

read -p "Masukkan pilihan Anda [1-4]: " choice

case $choice in
    1)
        clear
        typing_effect ">>> Mengawali instalasi panel..."
        loading_anim 2
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/install.sh
        chmod +x install.sh
        ./install.sh
        ;;
    2)
        clear
        typing_effect ">>> Mempersiapkan instalasi wings..."
        loading_anim 2
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/wings.sh
        chmod +x wings.sh
        ./wings.sh
        ;;
    3)
        clear
        typing_effect ">>> Membuka menu tambah admin..."
        loading_anim 1
        curl -O https://raw.githubusercontent.com/kentanakaXD/abdkshs/main/user.sh
        chmod +x user.sh
        ./user.sh
        ;;
    4)
        typing_effect "Terima kasih telah menggunakan tools ini. Sampai jumpa!"
        exit 0
        ;;
    *)
        echo -e "\n[!] Pilihan tidak valid, silakan jalankan ulang skrip."
        exit 1
        ;;
esac
