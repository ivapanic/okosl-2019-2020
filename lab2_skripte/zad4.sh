#!/bin/bash
sudo find / -type f -name "*.py" | xargs grep 'def ' | grep 'def ' | cut -d " " -f 2 | cut -d \( -f 1
sudo find / -type f -name "*.c" | xargs grep '#define ' | grep '#define' | cut -d "#" -f 2
sudo find / -type f -name "*.*" | xargs grep "include" | grep -n "include" | cut -d ":" -f 1
