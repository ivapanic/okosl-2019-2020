#!/bin/bash
sudo addgroup studenti
sudo mkdir /home/studenti
sudo chmod -R ugo=r /home/studenti/
sudo chmod uo-rwx /home/studenti/studenti-shared | sudo chmod g+rwx /home/studenti/studenti-shared

sudo mkdir /etc/new_skel
sudo cp -R /etc/skel/. /etc/new_skel/
sudo mkdir /etc/new_skel/Documents /etc/new_skel/Download
sudo ln -s /home/studenti/studenti-shared /etc/new_skel/Shared


