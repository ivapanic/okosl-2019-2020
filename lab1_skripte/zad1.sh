#!/bin/bash
mkdir ~/Desktop/FER/5.semestar/OKOSL/LAB1
cd ~/Desktop/FER/5.semestar/OKOSL/LAB1
mkdir source
touch empty
cp -R /boot /etc ./source
ln -s ./source target
cd -P target
pwd
du -shL target
touch -r empty novi
rm -r ~/Desktop/FER/5.semestar/OKOSL/LAB1/*
cd ~/Desktop/FER/5.semestar/OKOSL/
rmdir ./LAB1
