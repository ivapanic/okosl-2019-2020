#!/bin/bash
input="/home/iva/Desktop/FER/5.semestar/OKOSL/lab3_skripte/imena.txt"
while IFS= read -r line
do
  sudo useradd -m -k /etc/new_skel/ -G studenti "$line"
  sudo usermod -s /bin/bash "$line"
  sudo mkhomedir_helper "$line"
  sudo echo "'$line':NREznZZd6RIqY" | sudo passwd --stdin "$line"
  sudo chmod u+rwx /home/"$line" | sudo chmod go-rwx /home/"$line"
done < "$input"

