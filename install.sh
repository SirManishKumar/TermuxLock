#!/system/bin/sh
clear
pkg update -y
pkg upgrade -y
pkg install figlet
clear
echo "Enter Your name"
read username
clear
echo "Enter Password"
read password
echo "$username:$password">>/data/data/com.termux/files/usr/etc/user.txt
rm $HOME/../usr/etc/bash.bashrc
cp bash.bashrc $HOME/../usr/etc/
clear
figlet DONE
echo "Restart your Terminal"
